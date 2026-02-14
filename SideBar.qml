import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Scope {
  Variants {
    model: Quickshell.screens 

    PanelWindow {
      id: sidebar
      required property var modelData
      screen: modelData


      property bool isHovered: false
      
<<<<<<< HEAD
      implicitWidth: isHovered ? 450 : 10
      implicitHeight: isHovered ? 450 : 120

      color: "transparent" 
      
=======
      width: isHovered ? 260 : 10
      height: isHovered ? 450 : 120

      color: "transparent" 

>>>>>>> b72561913f2a96170348b710ddfd05374513bfa1
      WlrLayershell.layer: WlrLayer.Top
      WlrLayershell.namespace: "sidebar"
      WlrLayershell.exclusiveZone: 0

      Behavior on width {
          NumberAnimation {
<<<<<<< HEAD
            duration: 2000
            easing.type: Easing.OutBack
=======
            duration: 400
            easing.type: Easing.OutExpo
>>>>>>> b72561913f2a96170348b710ddfd05374513bfa1
          }
        }

      Behavior on height {
        NumberAnimation {
<<<<<<< HEAD
          duration: 2000 
          easing.type: Easing.OutBack
=======
          duration: 400 
          easing.type: Easing.OutExpo
>>>>>>> b72561913f2a96170348b710ddfd05374513bfa1
        }
      }

      anchors {
        right: true
        top: true
        bottom: true
      }

      margins {
        top: 30
        bottom: 30
      }

      Rectangle {
        id: sidebarcontainer
        anchors.fill: parent
        color: Theme.bg
        radius: 15
        clip: true
<<<<<<< HEAD
        anchors.rightMargin: -25
=======
>>>>>>> b72561913f2a96170348b710ddfd05374513bfa1

        border.color: Qt.rgba(1, 1, 1, 0.1)
        border.width: 1

        MouseArea {
          anchors.fill: parent
          hoverEnabled: true
          onEntered: sidebar.isHovered = true 
<<<<<<< HEAD
          onExited:  sidebar.isHovered = false

          // propogateComposedEvents: true
=======
          onExited: sidebar.isHovered = false
>>>>>>> b72561913f2a96170348b710ddfd05374513bfa1
        }

        Rectangle {
          id: rightsidecontent 
          color: Theme.fg
          anchors.margins: 2
          radius: 13 
<<<<<<< HEAD
          anchors.rightMargin: -25
=======
          anchors.rightMargin: -20
>>>>>>> b72561913f2a96170348b710ddfd05374513bfa1

          anchors {
            top: parent.top
            bottom: parent.bottom
            left: parent.left

            right: parent.right
            rightMargin: -20
          }


          ColumnLayout {
            anchors.centerIn: parent
            opacity: sidebar.width > 100 ? 1 : 0 // Hide text when small

            width: parent.width - 20 
            height: parent.height
            anchors.left: parent.left
            anchors.margins: 10


            Behavior on opacity { NumberAnimation { duration: 200 } }

            Text {
              text: "Hello world" 
              color: Theme.fg
            }
            
            Item {
              Layout.fillHeight: true
<<<<<<< HEAD
              Layout.fillWidth: true
=======
>>>>>>> b72561913f2a96170348b710ddfd05374513bfa1
              Text {text: "Hello world"}
            }

        }
      }



      }
    
    }
    
  }
}
