pragma Singleton
import Quickshell
import QtQuick

Scope{
  id: controlpanel
  property bool active: false

  PanelWindow {
  id: windows

  visible: controlpanel.active

  anchors {
    left: true
    bottom: true
    right: true
  }
  width: 350
  height: 500


  Rectangle {
    anchors.fill: parent
    color: Theme.bg
    radius: 12
  

  Text {
    anchors.centerIn: parent
    text: "Hello!"
   }
  }
 }
}
