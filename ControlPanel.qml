pragma Singleton
import Quickshell
import QtQuick
import Quickshell.Wayland

Scope{
  id: controlpanel
  property bool active: false

  PanelWindow {
  id: windows

  color: "transparent"

  visible: controlpanel.active

  WlrLayershell.layer: WlrLayer.Overlay
  WlrLayershell.exclusiveZone: 0
  WlrLayershell.keyboardFocus: WlrLayershell.OnDemand

  anchors {
    left: true
    bottom: true
    top: true
  }

  implicitWidth: 350
  implicitHeight: 500

  margins {
    top: 10
    bottom: 10
    left: 10
  }

  Rectangle {
    anchors.fill: parent
    color: Theme.bg
    radius: 12
  

  Text {
    anchors.centerIn: parent
    text: "Hello!"
    color: Theme.tertiary
   }
  }
 }
}
