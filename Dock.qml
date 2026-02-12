import Quickshell
import Quickshell.Wayland 
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            id: bottomWindow
            required property var modelData
            screen: modelData

            // REQUIRED: Case-sensitive "transparent"
            color: "transparent"

            WlrLayershell.layer: WlrLayer.Overlay 
            WlrLayershell.namespace: "dock"
            
            // Set to 0 so windows don't jump when the dock hides/shows
            WlrLayershell.exclusiveZone: 0 

            anchors {
                bottom: true
		left: true
		right: true
            }

            // A pill dock needs a fixed or implicit width
            implicitWidth: 400
            implicitHeight: 60 

            property bool hovered: false 
            
            // LOGIC: 10px margin when visible, hidden otherwise.
            // Using - (height - 2) keeps a 2px "trigger" line at the bottom.
            margins.bottom: hovered ? 10 : -(implicitHeight - 2)

            Behavior on margins.bottom {
                NumberAnimation { 
                    duration: 250
                    easing.type: Easing.OutCubic 
                }
            }

            Rectangle {
                anchors.fill: parent 
                color: Theme.bg
                radius: 16
                border.color: Theme.outlineVariant
                border.width: 1

                // This detects the mouse to trigger the auto-hide
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true 
                    onEntered: bottomWindow.hovered = true
                    onExited: bottomWindow.hovered = false
                }

                RowLayout {
                    anchors.fill: parent
                    anchors.margins: 10
                    
                    Text {
                        text: "Dock"
                        // Theme.primary or Theme.onBackground ensures visibility
                        color: Theme.primary 
                        font.family: "JetBrainsMono Nerd Font"
                        font.pixelSize: 16
                        
                        // FIXED: Qt must be lowercase 't'
                        Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
                    }
                }
            }
        }
    }
}
