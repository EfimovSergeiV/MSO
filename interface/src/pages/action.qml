import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Extras 1.4

Item {
    id: item1
    Rectangle {
        id: rectangle
        color: "#004f90"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Button {
            x: 618
            y: 936
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
            x: 948
            y: 936
            width: 324
            height: 80
            text: qsTr("Выход")
            font.pointSize: 14
            Material.background: Material.Blue
            highlighted: true
            onClicked: {
                stackView.push(Qt.resolvedUrl("index.qml"))
            }
        }

        Rectangle {
            id: rectangle1
            x: 380
            y: 484
            width: 219
            height: 80
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle2
            x: 648
            y: 484
            width: 220
            height: 80
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle3
            x: 519
            y: 289
            width: 80
            height: 109
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle4
            x: 648
            y: 289
            width: 80
            height: 109
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle5
            x: 236
            y: 448
            width: 80
            height: 116
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle6
            x: 908
            y: 448
            width: 80
            height: 116
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle7
            x: 519
            y: 399
            width: 80
            height: 20
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle8
            x: 648
            y: 399
            width: 80
            height: 20
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle10
            x: 648
            y: 463
            width: 80
            height: 20
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle9
            x: 519
            y: 463
            width: 80
            height: 20
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle11
            x: 549
            y: 315
            width: 20
            height: 83
            color: "#4f4f4f"
        }

        Rectangle {
            id: rectangle12
            x: 649
            y: 296
            width: 78
            height: 20
            color: "#4f4f4f"
        }

        Rectangle {
            id: rectangle13
            x: 678
            y: 315
            width: 20
            height: 83
            color: "#4f4f4f"
        }

        Rectangle {
            id: rectangle14
            x: 520
            y: 296
            width: 78
            height: 20
            color: "#4f4f4f"
        }

        Rectangle {
            id: rectangle15
            x: 909
            y: 541
            width: 78
            height: 20
            color: "#4f4f4f"
        }

        Rectangle {
            id: rectangle16
            x: 237
            y: 541
            width: 78
            height: 20
            color: "#4f4f4f"
        }

        Rectangle {
            id: rectangle17
            x: 266
            y: 434
            width: 20
            height: 110
            color: "#4f4f4f"
        }

        Rectangle {
            id: rectangle18
            x: 938
            y: 434
            width: 20
            height: 110
            color: "#4f4f4f"
        }

        Button {
            id: button
            x: 512
            y: 936
            text: qsTr("Button")
            onClicked: {
                statusIndicator.active = !statusIndicator.active
                statusIndicator1.active = !statusIndicator1.active
            }
        }

        StatusIndicator {
            id: statusIndicator
            x: 160
            y: 171
        }

        StatusIndicator {
            id: statusIndicator1
            x: 98
            y: 171
            active: true
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:1024;width:1280}D{i:16}D{i:17}D{i:19}
D{i:21}
}
##^##*/

