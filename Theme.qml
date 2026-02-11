// Theme.qml
pragma Singleton
import Quickshell
import QtQuick

Singleton {
    id: root
    
    readonly property color colBg: "#FFFFFFFF"
    readonly property color colFg: "#a9b1d6"
    readonly property color colMuted: "#444b6a"
    readonly property color colCyan: "#0db9d7"
    readonly property color colBlue: "#7aa2f7"
    readonly property color colYellow: "#e0af68"
    readonly property color colCharcoal: "#36454F"
    readonly property color colBlack: "#000000"

    // Red, yellow, brown - muted and relaxed
    
    // Purple 
    readonly property color colLilac: "#C8A2C8"
    
    readonly property string fontFamily: "JetBrainsMono Nerd Font"
    readonly property int fontSize: 14
}
