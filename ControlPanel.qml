pragma Singleton
import Quickshell
import QtQuick
import Quickshell.Wayland
import QtQuick.Layouts
=======

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
            bottom: 45 
            left: 10
        }

        // BACKGROUND RECTANGLE
        Rectangle {
            anchors.fill: parent
            color: Theme.bg
            radius: 12
            border.color: Theme.outlineVariant
            border.width: 1

            // CONTENT LAYOUT
            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 16
                spacing: 12

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
  anchors {
    left: true
    bottom: true
    top: true
  }

                Text {
                    Layout.alignment: Qt.AlignHCenter
                    text: "Control Center"
                    color: Theme.tertiary
                    font.family: "JetBrainsMono Nerd Font"
                    font.pixelSize: 14
                }

                // Vertical Spacer: This pushes "Hello!" to the center
                Item { Layout.fillHeight: true }

                Text {
                    Layout.alignment: Qt.AlignHCenter
                    text: "Hello!"
                    color: Theme.tertiary
                    font.family: "JetBrainsMono Nerd Font"
                    font.pixelSize: 20
                }

                // Another Spacer: This keeps "Hello!" perfectly in the middle
                Item { Layout.fillHeight: true }
            }
        }
    }
  Text {
    anchors.centerIn: parent
    text: "Hello world!"
    color: Theme.tertiary
   }
  }
 }
}
