import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    id: indexPage

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        anchors.fill: parent
        color: "#133656"

        Rectangle {
            id: rectangle1
            x: 0
            y: 412
            width: 348
            radius: 5
            color: "#7e000000"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: rectangle3.top
            anchors.bottomMargin: 6
            anchors.topMargin: 8
            anchors.leftMargin: 8

            Button {
                id: button
                x: 8
                y: 8
                width: 332
                height: 40
                text: "Визуализация"
                onClicked: {
                    stackView.push(Qt.resolvedUrl("action.qml"))
                }
            }

            Button {
                id: button1
                x: 8
                y: 761
                width: 332
                height: 40
                text: qsTr("Программы")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 8
                onClicked: {
                    stackView.push(Qt.resolvedUrl("programms.qml"))
                }
            }

            Button {
                id: button3
                x: 8
                y: 59
                width: 332
                height: 40
                text: "График"
                onClicked: {
                    stackView.push(Qt.resolvedUrl("charts.qml"))
                }
            }
        }

        Rectangle {
            id: rectangle2
            x: 362
            y: 8
            width: 910
            radius: 5
            height: 1008
            color: "#7f000000"
            anchors.left: rectangle1.right
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.rightMargin: 8
            anchors.topMargin: 8
            anchors.leftMargin: 6

            Label {
                id: label
                x: 829
                width: 73
                height: 37
                color: "#ffffff"
                text: qsTr("21:56:32")
                anchors.right: parent.right
                anchors.top: parent.top
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 8
                anchors.rightMargin: 8
                font.bold: true
                font.pointSize: 8
            }
        }

        Rectangle {
            id: rectangle3
            x: 8
            y: 823
            width: 348
            height: 193
            radius: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            color: "#7f000000"

            Button {
                id: button2
                x: 8
                y: 145
                width: 332
                height: 40
                text: qsTr("Настройки")
                onClicked: {
                    stackView.push(Qt.resolvedUrl("settings.qml"))
                }
            }
        }

        Image {
            id: image
            x: 1044
            y: 968
            width: 219
            height: 37
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            source: "./cnt/logo.png"
            anchors.rightMargin: 17
            anchors.bottomMargin: 19
            fillMode: Image.PreserveAspectFit
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:1024;width:1280}D{i:7}
}
##^##*/

