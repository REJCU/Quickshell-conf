// BarMiddle.qml
import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData
            color: Theme.bg


            anchors {
                top: true
                left: true
                right: true
            }

            margins {
                top: 5
                left: 5
                right: 5
            }

            implicitHeight: 30

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                spacing: 10

                // 1. LEFT SIDE: Workspaces
                Workspaces {
                    Layout.alignment: Qt.AlignLeft
                }

                // 2. MIDDLE: Spacer (This pushes the clock to the far right)
                Item {
                    Layout.fillWidth: true
                }

                Text{
                  text: `CPU: ${Systemstats.cpuUsage}% | RAM: ${Systemstats.memUsage}% | Temp: ${Systemstats.temp}°C |` 
                  color: Theme.tertiary // Or your Matugen primary color
                  font.pixelSize: 14
                  Layout.alignment: Qt.AlignVCenter | Qt.AlignRight
                }

                // 3. RIGHT SIDE: Clock
                ClockWidget {
                Layout.alignment: Qt.AlignVCenter | Qt.AlignRight
                }
            }
        }
    }
}
