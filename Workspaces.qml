// Workspaces.qml
import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

RowLayout {
    spacing: 10
    
    Repeater {
        model: 9
        Text {
            property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
            property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
            
            text: index + 1
            color: isActive ? Theme.tertiary : (ws ? Theme.primary : Theme.secondary)
            font { pixelSize: 14; bold: true }

            MouseArea {
                anchors.fill: parent
                onClicked: Hyprland.dispatch("workspace " + (index + 1))
            }
        }
    }
}
