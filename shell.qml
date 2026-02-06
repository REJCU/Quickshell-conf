import Quickshell // for panelWindow
import QtQuick // for text

panelWindow {
	anchors{
		top: true
		left: true
		right:true 
	}
	implicitHeight: 30

	Text {
		anchors.centerIn: parent

		text:"Hello World"
	}
}
