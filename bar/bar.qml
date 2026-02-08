import Quickshell.Io // for procces
import QtQuick // for text

PanelWindow {
 anchors{
	top: true
	left: true
	right:true 
}

implicitHeight: 30

Text {
	id: clock

	anchors.centerIn: parent

	Process {
		id: dateProc

		command: ["date"]
		running: true

		stdout: StdioCollector {
			onStreamFinished: clock.text = this.text
		}
	}
	Timer {
		interval: 1000
		running: true
		repeat: true
		onTriggered: dateProc.running = true
	}
     }
}


