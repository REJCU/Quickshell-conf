pragma Singleton
import Quickshell
import Quickshell.Io
import QtQuick

Scope {
    id: root
    
    property int cpuUsage: 0
    property int lastCpuTotal: 0
    property int lastCpuIdle: 0
    property int memUsage: 0
    property int temp: 0

    // --- Battery Properties ---
    property int batteryLevel: 0
    property bool isCharging: false

    // CPU Process
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

    // RAM Process
    Process {
        id: ramProc
        command: ["sh", "-c", "free | grep Mem"]
        stdout: SplitParser {
            onRead: data => {
                if (!data) return;
                var p = data.trim().split(/\s+/);
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
                    root.temp = Math.round(parseFloat(this.text));
                }
            }
        }
    }

    // --- Battery Level Process ---
    Process {
        id: battLevelProc
        command: ["cat", "/sys/class/power_supply/BAT0/capacity"]
        stdout: StdioCollector {
            onStreamFinished: {
                if (this.text) root.batteryLevel = parseInt(this.text.trim());
            }
        }
    }

    // --- Battery Status Process ---
    Process {
        id: battStatusProc
        command: ["cat", "/sys/class/power_supply/BAT0/status"]
        stdout: StdioCollector {
            onStreamFinished: {
                root.isCharging = (this.text.trim() === "Charging");
            }
        }
    }

    Timer {
        interval: 2000
        running: true
        repeat: true
        onTriggered: {
            cpuProc.running = true;
            ramProc.running = true;
            tempProc.running = true;
            // Trigger Battery updates
            battLevelProc.running = true;
            battStatusProc.running = true;
        }
    }
}
