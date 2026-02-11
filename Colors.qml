// This is a Matugen template
pragma Singleton
import QtQuick

QtObject {
    readonly property color bg:  "{{colors.surface.default.hex}}"
    readonly property color fg:  "{{colors.on_surface.default.hex}}"
    readonly property color accent: "{{colors.primary.default.hex}}"
    readonly property color error:  "{{colors.error.default.hex}}"
}
