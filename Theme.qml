pragma Singleton
import QtQuick

QtObject {
    // Backgrounds & Surfaces
    readonly property color bg: "#111318"
    readonly property color bgContainer: "#1d2024"
    readonly property color bgContainerLow: "#191c20"
    readonly property color bgContainerHigh: "#282a2f"
    readonly property color surfaceVariant: "#43474e"
    
    // Primary Accent
    readonly property color primary: "#a6c8ff"
    readonly property color on_primary: "#01315e"
    readonly property color primaryContainer: "#224876"
    readonly property color on_primaryContainer: "#d4e3ff"
    
    // Secondary Accent
    readonly property color secondary: "#bcc7dc"
    readonly property color on_secondary: "#273141"
    readonly property color secondaryContainer: "#3d4758"
    readonly property color on_secondaryContainer: "#d8e3f8"
    
    // Tertiary Accent (Great for Temp/System stats)
    readonly property color tertiary: "#dabde2"
    readonly property color on_tertiary: "#3d2846"
    readonly property color tertiaryContainer: "#553f5d"
    readonly property color on_tertiaryContainer: "#f7d8ff"
    
    // Text & Foregrounds
    readonly property color on_surface: "#e1e2e9"
    readonly property color on_surfaceVariant: "#c3c6cf" // Perfect for "Muted" text
    
    // Status & Misc
    readonly property color error: "#ffb4ab"
    readonly property color on_error: "#690005"
    readonly property color outline: "#8d9199"
    readonly property color outlineVariant: "#43474e"
    readonly property color shadow: "#000000"
}
