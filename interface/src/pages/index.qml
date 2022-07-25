import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Item {
    id: indexPage

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        anchors.fill: parent
        color: "#004f90"

        Rectangle {
            id: rectangle1
            x: 0
            y: 412
            width: 340
            radius: 5
            color: "#50000000"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: rectangle3.top
            anchors.bottomMargin: 6
            anchors.topMargin: 8
            anchors.leftMargin: 8

            Label {
                id: label2
                x: 8
                y: 8
                width: 332
                height: 35
                color: "#ffffff"
                text: "Процесс:"
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Light"
                font.pointSize: 14
            }

            Button {
                x: 8
                y: 55
                width: 324
                height: 80
                text: qsTr("Визуализация")
                font.pointSize: 14
                highlighted: true
                Material.background: Material.Blue
            }

            Button {
                x: 8
                y: 141
                width: 324
                height: 80
                text: qsTr("График")
                font.pointSize: 14
                Material.background: Material.Blue
                highlighted: true
                onClicked: {
                    stackView.push(Qt.resolvedUrl("charts.qml"))
                }
            }

            Button {
                x: 8
                y: 227
                width: 324
                height: 80
                text: qsTr("Кнопка")
                font.pointSize: 14
                Material.background: Material.Blue
                highlighted: true
                onClicked: {
                    stackView.push(Qt.resolvedUrl("charts.qml"))
                }
            }

            Button {
                x: 8
                y: 672
                width: 324
                height: 80
                text: qsTr("Выход")
                font.pointSize: 14
                Material.background: Material.Blue
                highlighted: true
                onClicked: {
                    handler.close_application()
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
            color: "#50000000"
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

            Material.accent: Material.Blue
        }

        Rectangle {
            id: rectangle3
            x: 8
            y: 774
            width: 340
            height: 242
            radius: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            color: "#50000000"

            Label {
                id: label1
                x: 8
                y: 8
                width: 332
                height: 30
                color: "#ffffff"
                text: "Настройки:"
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Button {
                x: 8
                y: 68
                width: 324
                height: 80
                text: qsTr("Программы")
                font.pointSize: 14
                Material.background: Material.Blue
                highlighted: true
                onClicked: {
                    stackView.push(Qt.resolvedUrl("programms.qml"))
                }
            }

            Button {
                x: 8
                y: 154
                width: 324
                height: 80
                text: qsTr("Настройки")
                font.pointSize: 14
                Material.background: Material.Blue
                highlighted: true
                onClicked: {
                    stackView.push(Qt.resolvedUrl("settings.qml"))
                }
            }
        }

        Image {
            id: image
            x: 1036
            y: 960
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

    //    Component.onCompleted: {
    //        handler.running_application()
    //    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:1024;width:1280}D{i:5}D{i:6}D{i:7}
D{i:12}D{i:13}
}
##^##*/

