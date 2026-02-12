pragma Singleton
import QtQuick

QtObject {
    // Backgrounds & Surfaces
    readonly property color bg: "#f4fbf9"
    readonly property color bgContainer: "#e9efed"
    readonly property color bgContainerLow: "#eff5f3"
    readonly property color bgContainerHigh: "#e3e9e8"
    readonly property color surfaceVariant: "#dae5e2"
    
    // Primary Accent
    readonly property color primary: "#006a64"
    readonly property color on_primary: "#ffffff"
    readonly property color primaryContainer: "#9df2e9"
    readonly property color on_primaryContainer: "#00201e"
    
    // Secondary Accent
    readonly property color secondary: "#4a6360"
    readonly property color on_secondary: "#ffffff"
    readonly property color secondaryContainer: "#cce8e4"
    readonly property color on_secondaryContainer: "#051f1d"
    
    // Tertiary Accent (Great for Temp/System stats)
    readonly property color tertiary: "#48617b"
    readonly property color on_tertiary: "#ffffff"
    readonly property color tertiaryContainer: "#cfe5ff"
    readonly property color on_tertiaryContainer: "#001d34"
    
    // Text & Foregrounds
    readonly property color on_surface: "#161d1c"
    readonly property color on_surfaceVariant: "#3f4947" // Perfect for "Muted" text
    
    // Status & Misc
    readonly property color error: "#ba1a1a"
    readonly property color on_error: "#ffffff"
    readonly property color outline: "#6f7977"
    readonly property color outlineVariant: "#bec9c7"
    readonly property color shadow: "#000000"
}
