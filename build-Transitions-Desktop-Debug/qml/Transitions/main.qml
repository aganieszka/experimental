import QtQuick 2.0
import QtTest 1.0
import QtQuick.Window 2.1

Rectangle {
    id: rectangle2
    width: 360
    height: 360
    color: "#333333"

    StateGroup {
           id: states
           states: [
               State {
                   name: 'state1'

                   PropertyChanges {
                       target: image1
                       x: rectangle3.x
                       y: rectangle3.y
                   }
               },
               State {
                   name: 'state2'

                   PropertyChanges {
                       target: image1
                       x: rectangle4.x
                       y: rectangle4.y
                   }
               }
           ]

           transitions: [
                          Transition {
                                  from: 'state2'; to: 'state1'
                                  NumberAnimation { properties: "x,y"; duration: 1000; easing.type: Easing.InOutQuad }
                              },
                           Transition {
                                       from: "*"; to: "state2"
                                       NumberAnimation {
                                           properties: "x,y";
                                           easing.type: Easing.InOutQuad;
                                           duration: 2000
                                       }
                            },
                           Transition {
                                        NumberAnimation {
                                            properties: "x,y";
                                            duration: 200
                                        }
                            }
           ]
    }




    Rectangle {
        id: rectangle1
        x: 20
        y: 29
        width: 87
        height: 71
        color: "#00000000"
        border.color: "#1c19a9"

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            onClicked: states.state = ' '
        }
    }

    Rectangle {
        id: rectangle3
        x: 225
        y: 126
        width: 87
        height: 71
        color: "#00000000"
        MouseArea {
            id: mouseArea2
            anchors.fill: parent
            onClicked: states.state = 'state1'
        }
        border.color: "#1c19a9"
    }

    Rectangle {
        id: rectangle4
        x: 33
        y: 253
        width: 87
        height: 71
        color: "#00000000"
        border.color: "#3b38c7"
        MouseArea {
            id: mouseArea3
            hoverEnabled: true
            anchors.fill: parent
            onClicked: states.state = 'state2'
        }
    }

    Image {
        id: image1
        x: 20
        y: 29
        width: 87
        height: 71
        source: "states.svg"
    }

}


