pragma Singleton
import Quickshell
import Quickshell.Io
import QtQuick

Scope {
    id: root
    
    property int cpuUsage: 0
    property int lastCpuTotal: 0
    property int lastCpuIdle: 0
    
    // 1. Add the RAM property
    property int memUsage: 0


    // Temparure
    property int temp: 0

    // CPU Process (Keep as is)
    Process {
        id: cpuProc
        command: ["sh", "-c", "head -1 /proc/stat"]
        stdout: SplitParser {
            onRead: data => {
                if (!data) return;
                var p = data.trim().split(/\s+/);
                var idle = parseInt(p[4]) + parseInt(p[5]);
                var total = p.slice(1, 8).reduce((a, b) => a + parseInt(b), 0);
                if (lastCpuTotal > 0) {
                    cpuUsage = Math.round(100 * (1 - (idle - lastCpuIdle) / (total - lastCpuTotal)));
                }
                lastCpuTotal = total;
                lastCpuIdle = idle;
            }
        }
    }

    // 2. Add the RAM Process
    Process {
        id: ramProc
        command: ["sh", "-c", "free | grep Mem"]
        stdout: SplitParser {
            onRead: data => {
                if (!data) return;
                var p = data.trim().split(/\s+/);
                // p[1] is Total, p[2] is Used
                var total = parseInt(p[1]);
                var used = parseInt(p[2]);
                if (total > 0) {
                    memUsage = Math.round((used / total) * 100);
                }
            }
        }
      }

 // Temperature Process
    Process {
        id: tempProc
        command: ["sh", "-c", "sensors | grep 'Tctl' | awk '{print $2}' | tr -d '+°C'"]
        stdout: StdioCollector {
            onStreamFinished: {
                if (this.text && this.text.trim() !== "") {
                    // Assign directly to the property since we are inside the scope
                    root.temp = Math.round(parseFloat(this.text));
                }
            }
        }
    }

    Timer {
        interval: 2000
        running: true
        repeat: true
        onTriggered: {
            cpuProc.running = true;
            ramProc.running = true; // 3. Trigger RAM here
            tempProc.running = true;
        }
    }
}
