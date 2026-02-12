pragma Singleton
import Quickshell
import QtQuick
import Quickshell.Wayland

Scope {
    id: controlpanel
    property bool active: false

    PanelWindow {
        id: windows
        visible: controlpanel.active
        color: "transparent"

        WlrLayershell.layer: WlrLayer.Overlay
        WlrLayershell.exclusiveZone: 0
        WlrLayershell.keyboardFocus: WlrLayershell.OnDemand

        anchors {
            left: true
            bottom: true
	    top: true
        }

        implicitWidth: 350
        implicitHeight: 500

        margins {
            top: 10
            bottom: 45 // Pushes it up so it doesn't overlap a bottom bar (if you have one)
            left: 10
        }

        Rectangle {
            anchors.fill: parent
            color: Theme.bg
            radius: 12
            
            // Adding a border helps the "stick out" look
            border.color: Theme.outlineVariant
            border.width: 1

            Text {
                anchors.centerIn: parent
                text: "Hello!"
                color: Theme.tertiary
                font.family: "JetBrainsMono Nerd Font"
                font.pixelSize: 20
            }
        }
    }
}
