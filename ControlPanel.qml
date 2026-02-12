pragma Singleton
import Quickshell
import QtQuick
<<<<<<< HEAD
import Quickshell.Wayland
=======
<<<<<<< HEAD
=======
import Quickshell.Wayland
>>>>>>> 48ddb7b (Made Logo open a box)
>>>>>>> badfcdb890fda5a2e2d51037dc4408697c0df9cf

Scope{
  id: controlpanel
  property bool active: false

  PanelWindow {
  id: windows

<<<<<<< HEAD
=======
<<<<<<< HEAD
  visible: controlpanel.active

  anchors {
    left: true
    bottom: true
    right: true
  }
  width: 350
  height: 500

=======
>>>>>>> badfcdb890fda5a2e2d51037dc4408697c0df9cf
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
<<<<<<< HEAD
=======
>>>>>>> 48ddb7b (Made Logo open a box)
>>>>>>> badfcdb890fda5a2e2d51037dc4408697c0df9cf

  Rectangle {
    anchors.fill: parent
    color: Theme.bg
    radius: 12
  

  Text {
    anchors.centerIn: parent
    text: "Hello!"
<<<<<<< HEAD
    color: Theme.tertiary
=======
<<<<<<< HEAD
=======
    color: Theme.tertiary
>>>>>>> 48ddb7b (Made Logo open a box)
>>>>>>> badfcdb890fda5a2e2d51037dc4408697c0df9cf
   }
  }
 }
}
