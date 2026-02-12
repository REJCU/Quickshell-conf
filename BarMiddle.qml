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

                Text {
                // We use a ternary operator to show a bolt icon when charging
                    text: `CPU: ${Systemstats.cpuUsage}% | RAM: ${Systemstats.memUsage}% | Temp: ${Systemstats.temp}°C | ${Systemstats.isCharging ? "󱐋 " : "󰁹 "}${Systemstats.batteryLevel}%` 
                    
                    // Dynamic color: turns red (Theme.error) if battery is low and not charging
                    color: (Systemstats.batteryLevel < 20 && !Systemstats.isCharging) ? Theme.error : Theme.tertiary 
                    
                    font.pixelSize: 14
                    font.family: root.fontFamily // Ensure your Nerd Font is applied for the icons
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
