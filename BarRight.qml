// BarRight.qml
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
            color: Theme.bg // Changed to a darker color for better visibility of your blue text

            anchors {
                top: true
                left: true
                right: true
            }
	          
            margins {
	          top: 10
	          left: 10
            right: 10
          }

            implicitHeight: 30

            // Use a RowLayout or similar to organize your widgets
            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 10
                anchors.rightMargin: 10

                ClockWidget {
                    Layout.alignment: Qt.AlignCenter | Qt.AlignRight
                }

            }
        }
    }
}
