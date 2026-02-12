import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            id: rootWindow
            required property var modelData
            screen: modelData
            
            color: "transparent" 

            WlrLayershell.layer: WlrLayer.Top
            WlrLayershell.namespace: "bar"
            WlrLayershell.exclusiveZone: height

            anchors {
                top: true
                left: true
                right: true
            }

            margins {
                top: 0
                left: 10
                right: 10
            }

            implicitHeight: 38

            Rectangle {
                id: statusBar
                anchors.fill: parent
                color: Theme.bg 
                radius: 15 
                
                // --- STEP 1: REMOVE BORDER ---
                border.width: 0 

                // --- STEP 2: SIMPLIFIED TOP FLATTENER ---
                Rectangle {
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    height: parent.radius
                    color: parent.color
                    
                    // No border needed here either
                    border.width: 0
                    z: 1
                }

                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 15
                    anchors.rightMargin: 15
                    spacing: 10
                    z: 2 
                    
                    Text {
                        text: "" 
                        color: Theme.primary
                        font.pixelSize: 18
                        font.family: "JetBrainsMono Nerd Font"
                        
                        MouseArea {
                          anchors.fill: parent
                          cursorShape: Qt.PointingHandCursor
                          onClicked: {
<<<<<<< HEAD
                            ControlPanel.active = !ControlPanel.active
=======
<<<<<<< HEAD
<<<<<<< HEAD
                            ControlPanel.active = !ControlPanel.active
=======
>>>>>>> d7b933d51e5a9db5dee806c767cdd29b5298fa3d
=======
                            ControlPanel.active = !ControlPanel.active
>>>>>>> 48ddb7b (Made Logo open a box)
>>>>>>> badfcdb890fda5a2e2d51037dc4408697c0df9cf

                          }
                        } 
                    }
                    
                    Workspaces {
                        Layout.alignment: Qt.AlignLeft
                    }

                    Item {
                        Layout.fillWidth: true
                    }

                    Text {
                        text: `CPU: ${Systemstats.cpuUsage}% | RAM: ${Systemstats.memUsage}% | Temp: ${Systemstats.temp}°C | ${Systemstats.isCharging ? "󱐋 " : "󰁹 "}${Systemstats.batteryLevel}%` 
                        color: (Systemstats.batteryLevel < 20 && !Systemstats.isCharging) ? Theme.error : Theme.tertiary 
                        font.pixelSize: 14
                        font.family: "JetBrainsMono Nerd Font" 
                        Layout.alignment: Qt.AlignVCenter | Qt.AlignRight
                    }

                    ClockWidget {
                        Layout.alignment: Qt.AlignVCenter | Qt.AlignRight
                    }
                }
            }
        }
    }
}
