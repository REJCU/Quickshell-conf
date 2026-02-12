import QtQuick
import QtQuick.Layouts
import Quickshell
import "." // Important: to see Theme and Time singletons

Text {

  text: Time.time
  color: Theme.tertiary
  font.pixelSize: 14

  verticalAlignment: Text.AlignVCenter
  horizontalAlignment: Text.AlignRight
}
