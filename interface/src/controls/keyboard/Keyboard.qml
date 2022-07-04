import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    id: keyboard

    property bool show: false

    Rectangle {
        id: rectangle
        y: 0
        height: 400
        color: "#d8000000"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        visible: keyboard.show

        Rectangle {
            id: abcRectangle
            width: 848
            height: 319
            color: "#00000000"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            visible: false

            KeyButton {
                id: keyButton
                x: 7
                y: 10
                width: 70
                height: 70
                text: "\u0439"
            }

            KeyButton {
                id: keyButton1
                x: 83
                y: 10
                width: 70
                height: 70
                text: "\u0446"
            }

            KeyButton {
                id: keyButton2
                x: 159
                y: 10
                width: 70
                height: 70
                text: "\u0443"
            }

            KeyButton {
                id: keyButton3
                x: 235
                y: 10
                width: 70
                height: 70
                text: "\u043a"
            }

            KeyButton {
                id: keyButton4
                x: 311
                y: 10
                width: 70
                height: 70
                text: "\u0435"
            }

            KeyButton {
                id: keyButton5
                x: 387
                y: 10
                width: 70
                height: 70
                text: "\u043d"
            }

            KeyButton {
                id: keyButton6
                x: 463
                y: 10
                width: 70
                height: 70
                text: "\u0433"
            }

            KeyButton {
                id: keyButton7
                x: 539
                y: 10
                width: 70
                height: 70
                text: "\u0448"
            }

            KeyButton {
                id: keyButton8
                x: 615
                y: 10
                width: 70
                height: 70
                text: "\u0449"
            }

            KeyButton {
                id: keyButton9
                x: 691
                y: 10
                width: 70
                height: 70
                text: "\u0437"
            }

            KeyButton {
                id: keyButton10
                x: 767
                y: 10
                width: 70
                height: 70
                text: "\u0445"
            }

            KeyButton {
                id: keyButton11
                x: 7
                y: 86
                width: 70
                height: 70
                text: "\u0444"
            }

            KeyButton {
                id: keyButton12
                x: 83
                y: 86
                width: 70
                height: 70
                text: "\u044b"
            }

            KeyButton {
                id: keyButton13
                x: 159
                y: 86
                width: 70
                height: 70
                text: "\u0432"
            }

            KeyButton {
                id: keyButton14
                x: 235
                y: 86
                width: 70
                height: 70
                text: "\u0430"
            }

            KeyButton {
                id: keyButton15
                x: 311
                y: 86
                width: 70
                height: 70
                text: "\u043f"
            }

            KeyButton {
                id: keyButton16
                x: 387
                y: 86
                width: 70
                height: 70
                text: "\u0440"
            }

            KeyButton {
                id: keyButton17
                x: 463
                y: 86
                width: 70
                height: 70
                text: "\u043e"
            }

            KeyButton {
                id: keyButton18
                x: 539
                y: 86
                width: 70
                height: 70
                text: "\u043b"
            }

            KeyButton {
                id: keyButton19
                x: 615
                y: 86
                width: 70
                height: 70
                text: "\u0434"
            }

            KeyButton {
                id: keyButton20
                x: 691
                y: 86
                width: 70
                height: 70
                text: "\u0436"
            }

            KeyButton {
                id: keyButton21
                x: 767
                y: 86
                width: 70
                height: 70
                text: "\u044d"
            }

            KeyButton {
                id: keyButton22
                x: 29
                y: 162
                width: 70
                height: 70
                text: "\u044f"
            }

            KeyButton {
                id: keyButton23
                x: 105
                y: 162
                width: 70
                height: 70
                text: "\u0447"
            }

            KeyButton {
                id: keyButton24
                x: 181
                y: 162
                width: 70
                height: 70
                text: "\u0441"
            }

            KeyButton {
                id: keyButton25
                x: 257
                y: 162
                width: 70
                height: 70
                text: "\u043c"
            }

            KeyButton {
                id: keyButton26
                x: 333
                y: 162
                width: 70
                height: 70
                text: "\u0438"
            }

            KeyButton {
                id: keyButton27
                x: 409
                y: 162
                width: 70
                height: 70
                text: "\u0442"
            }

            KeyButton {
                id: keyButton28
                x: 485
                y: 162
                width: 70
                height: 70
                text: "\u044c"
            }

            KeyButton {
                id: keyButton29
                x: 561
                y: 162
                width: 70
                height: 70
                text: "\u0431"
            }

            KeyButton {
                id: keyButton30
                x: 637
                y: 162
                width: 70
                height: 70
                text: "\u044e"
            }

            KeyButton {
                id: keyButton31
                x: 159
                y: 238
                width: 70
                height: 70
                text: ","
            }

            KeyButton {
                id: keyButton32
                x: 615
                y: 238
                width: 70
                height: 70
                text: "."
            }

            KeyButton {
                id: keyButton33
                x: 235
                y: 238
                width: 374
                height: 70
                text: "Пробел"
            }

            KeyButton {
                id: keyButton34
                x: 713
                y: 162
                width: 104
                height: 70
                text: "<"
            }

            KeyButton {
                id: keyButton35
                x: 7
                y: 238
                width: 146
                height: 70
                text: "?123"
                onClicked: {
                    abcRectangle.visible = false
                    intRectangle.visible = true
                }
            }

            KeyButton {
                id: keyButton36
                x: 691
                y: 238
                width: 146
                height: 70
                text: "Готово"
            }
        }

        Rectangle {
            id: intRectangle
            width: 365
            height: 319
            color: "#00000000"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            KeyButton {
                id: keyButton44
                x: 8
                y: 8
                width: 70
                height: 70
                text: "7"
            }

            KeyButton {
                id: keyButton37
                x: 8
                y: 236
                width: 146
                height: 70
                text: "0"
            }

            KeyButton {
                id: keyButton45
                x: 84
                y: 8
                width: 70
                height: 70
                text: "8"
            }

            KeyButton {
                id: keyButton38
                x: 8
                y: 160
                width: 70
                height: 70
                text: "1"
            }

            KeyButton {
                id: keyButton46
                x: 160
                y: 8
                width: 70
                height: 70
                text: "9"
            }

            KeyButton {
                id: keyButton39
                x: 84
                y: 160
                width: 70
                height: 70
                text: "2"
            }

            KeyButton {
                id: keyButton47
                x: 160
                y: 236
                width: 70
                height: 70
                text: "."
            }

            KeyButton {
                id: keyButton40
                x: 160
                y: 160
                width: 70
                height: 70
                text: "3"
            }

            KeyButton {
                id: keyButton48
                x: 236
                y: 8
                width: 123
                height: 70
                text: "<"
            }

            KeyButton {
                id: keyButton41
                x: 8
                y: 84
                width: 70
                height: 70
                text: "4"
            }

            KeyButton {
                id: keyButton49
                x: 236
                y: 84
                width: 123
                height: 70
                text: "ABC"
                onClicked: {
                    abcRectangle.visible = true
                    intRectangle.visible = false
                }
            }

            KeyButton {
                id: keyButton42
                x: 84
                y: 84
                width: 70
                height: 70
                text: "5"
            }

            KeyButton {
                id: keyButton50
                x: 236
                y: 160
                width: 123
                height: 144
                text: "Готово"
            }
            KeyButton {
                id: keyButton43
                x: 160
                y: 84
                width: 70
                height: 70
                text: "6"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:400;width:1280}D{i:4}D{i:5}D{i:6}D{i:7}
D{i:8}D{i:9}D{i:10}D{i:11}D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}
D{i:20}D{i:21}D{i:22}D{i:23}D{i:24}D{i:25}D{i:26}D{i:27}D{i:28}D{i:29}D{i:30}D{i:31}
D{i:32}D{i:33}D{i:34}D{i:35}D{i:36}D{i:37}D{i:38}D{i:2}D{i:41}D{i:43}D{i:45}D{i:46}
D{i:47}D{i:48}D{i:49}D{i:50}D{i:51}D{i:52}D{i:53}D{i:54}D{i:40}D{i:1}
}
##^##*/

