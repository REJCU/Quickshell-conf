pragma Singleton
import QtQuick

QtObject {
    // Backgrounds & Surfaces
    readonly property color bg: "#0e1514"
    readonly property color bgContainer: "#1a2120"
    readonly property color bgContainerLow: "#161d1c"
    readonly property color bgContainerHigh: "#252b2a"
    readonly property color surfaceVariant: "#3f4947"
    
    // Primary Accent
    readonly property color primary: "#81d5cd"
    readonly property color on_primary: "#003734"
    readonly property color primaryContainer: "#00504b"
    readonly property color on_primaryContainer: "#9df2e9"
    
    // Secondary Accent
    readonly property color secondary: "#b0ccc8"
    readonly property color on_secondary: "#1c3532"
    readonly property color secondaryContainer: "#324b49"
    readonly property color on_secondaryContainer: "#cce8e4"
    
    // Tertiary Accent (Great for Temp/System stats)
    readonly property color tertiary: "#afc9e7"
    readonly property color on_tertiary: "#18324a"
    readonly property color tertiaryContainer: "#304962"
    readonly property color on_tertiaryContainer: "#cfe5ff"
    
    // Text & Foregrounds
    readonly property color on_surface: "#dde4e2"
    readonly property color on_surfaceVariant: "#bec9c7" // Perfect for "Muted" text
    
    // Status & Misc
    readonly property color error: "#ffb4ab"
    readonly property color on_error: "#690005"
    readonly property color outline: "#899391"
    readonly property color outlineVariant: "#3f4947"
    readonly property color shadow: "#000000"
}
