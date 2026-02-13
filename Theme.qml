pragma Singleton
import QtQuick

QtObject {
    // Backgrounds & Surfaces
    readonly property color bg: "#f9f9ff"
    readonly property color bgContainer: "#ededf4"
    readonly property color bgContainerLow: "#f3f3fa"
    readonly property color bgContainerHigh: "#e7e8ee"
    readonly property color surfaceVariant: "#e0e2ec"
    
    // Primary Accent
    readonly property color primary: "#3d5f90"
    readonly property color on_primary: "#ffffff"
    readonly property color primaryContainer: "#d4e3ff"
    readonly property color on_primaryContainer: "#001c3a"
    
    // Secondary Accent
    readonly property color secondary: "#555f71"
    readonly property color on_secondary: "#ffffff"
    readonly property color secondaryContainer: "#d8e3f8"
    readonly property color on_secondaryContainer: "#121c2b"
    
    // Tertiary Accent (Great for Temp/System stats)
    readonly property color tertiary: "#6e5676"
    readonly property color on_tertiary: "#ffffff"
    readonly property color tertiaryContainer: "#f7d8ff"
    readonly property color on_tertiaryContainer: "#271430"
    
    // Text & Foregrounds
    readonly property color on_surface: "#191c20"
    readonly property color on_surfaceVariant: "#43474e" // Perfect for "Muted" text
    
    // Status & Misc
    readonly property color error: "#ba1a1a"
    readonly property color on_error: "#ffffff"
    readonly property color outline: "#74777f"
    readonly property color outlineVariant: "#c3c6cf"
    readonly property color shadow: "#000000"
}
