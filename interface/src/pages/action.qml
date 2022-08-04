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
            y: 295
            width: 80
            height: 103
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle4
            x: 648
            y: 295
            width: 80
            height: 103
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle5
            x: 264
            y: 451
            width: 80
            height: 114
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle6
            x: 907
            y: 450
            width: 80
            height: 114
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle7

            property bool up: false
            property bool down: false
            NumberAnimation on y {
                to: 434
                duration: 400
                running: rectangle7.up
            }

            NumberAnimation on y {
                to: 399
                duration: 400
                running: rectangle7.down
            }

            x: 519
            y: 399
            width: 80
            height: 20
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle8

            property bool up: false
            property bool down: false
            NumberAnimation on y {
                to: 434
                duration: 400
                running: rectangle8.up
            }

            NumberAnimation on y {
                to: 399
                duration: 400
                running: rectangle8.down
            }

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
            x: 908
            y: 543
            width: 78
            height: 20
            color: "#4f4f4f"
        }

        Rectangle {
            id: rectangle16
            x: 265
            y: 544
            width: 78
            height: 20
            color: "#4f4f4f"
        }

        Rectangle {
            id: rectangle17
            x: 294
            y: 437
            width: 20
            height: 110
            color: "#4f4f4f"
        }

        Rectangle {
            id: rectangle18
            x: 937
            y: 436
            width: 20
            height: 110
            color: "#4f4f4f"
        }

        StatusIndicator {
            id: statusIndicator
            x: 8
            y: 60
            color: "green"
            active: false
        }

        StatusIndicator {
            id: statusIndicator1
            x: 8
            y: 8
            color: "green"
            active: false
        }

        StatusIndicator {
            id: statusIndicator2
            x: 457
            y: 289
            color: "green"
            active: false
        }

        StatusIndicator {
            id: statusIndicator3
            x: 457
            y: 381
            color: "green"
            active: false
        }

        StatusIndicator {
            id: statusIndicator4
            x: 755
            y: 289
            color: "green"
            active: false
        }

        StatusIndicator {
            id: statusIndicator5
            x: 755
            y: 381
            color: "green"
            active: false
        }

        StatusIndicator {
            id: statusIndicator6
            x: 605
            y: 484
            width: 37
            height: 40
        }

        StatusIndicator {
            id: statusIndicator7
            x: 649
            y: 570
        }

        StatusIndicator {
            id: statusIndicator8
            x: 220
            y: 450
        }

        StatusIndicator {
            id: statusIndicator9
            x: 220
            y: 527
        }

        StatusIndicator {
            id: statusIndicator10
            x: 993
            y: 450
        }

        StatusIndicator {
            id: statusIndicator11
            x: 993
            y: 527
        }

        StatusIndicator {
            id: statusIndicator12
            x: 908
            y: 234
            width: 79
            height: 82
        }

        StatusIndicator {
            id: statusIndicator13
            x: 1234
            y: 8
        }

        StatusIndicator {
            id: statusIndicator14
            x: 1234
            y: 52
        }

        StatusIndicator {
            id: statusIndicator15
            x: 1234
            y: 96
        }

        StatusIndicator {
            id: statusIndicator16
            x: 1234
            y: 140
        }

        StatusIndicator {
            id: statusIndicator17
            x: 1234
            y: 184
        }

        StatusIndicator {
            id: statusIndicator18
            x: 1234
            y: 228
        }

        StatusIndicator {
            id: statusIndicator19
            x: 1234
            y: 289
            color: "red"
        }

        Label {
            id: label
            x: 1107
            y: 8
            width: 121
            height: 38
            color: "#ffffff"
            text: "Насос вкл."
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label1
            x: 1107
            y: 52
            width: 121
            height: 38
            color: "#ffffff"
            text: qsTr("П/А режим")
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label2
            x: 1107
            y: 96
            width: 121
            height: 38
            color: "#ffffff"
            text: qsTr("Исходное")
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label3
            x: 1107
            y: 140
            width: 121
            height: 38
            color: "#ffffff"
            text: qsTr("Кожух")
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label4
            x: 1107
            y: 184
            width: 121
            height: 38
            color: "#ffffff"
            text: qsTr("Уровень")
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label5
            x: 1107
            y: 228
            width: 121
            height: 38
            color: "#ffffff"
            text: qsTr("Фильтр")
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label6
            x: 1107
            y: 289
            width: 121
            height: 38
            color: "#ffffff"
            text: qsTr("Перегрев ТК")
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label7
            x: 52
            y: 8
            width: 177
            height: 19
            color: "#ffffff"
            text: qsTr("Выжигание / Подогрев")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label8
            x: 52
            y: 60
            width: 177
            height: 38
            color: "#ffffff"
            text: qsTr("Подогрев / Оплавление")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label9
            x: 52
            y: 30
            width: 177
            height: 19
            color: "#ffffff"
            text: qsTr("Оплавление")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            id: rectangle19
            x: 549
            y: 249
            width: 150
            height: 40
            color: "#ffffff"

            TextField {
                id: textField
                x: 5
                y: 0
                width: 140
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("0,00")
            }
        }

        Rectangle {
            id: rectangle20
            x: 8
            y: 976
            width: 150
            height: 40
            color: "#ffffff"
            TextField {
                id: textField1
                x: 5
                y: 0
                width: 140
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("Text Field")
            }
        }

        Rectangle {
            id: rectangle21
            x: 693
            y: 570
            width: 150
            height: 40
            color: "#ffffff"
            TextField {
                id: textField2
                x: 5
                y: 0
                width: 140
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("0,0")
            }
        }

        Label {
            id: label10
            x: 849
            y: 570
            width: 182
            height: 40
            color: "#ffffff"
            text: "Давление осадки"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label11
            x: 907
            y: 206
            width: 80
            height: 22
            color: "#ffffff"
            text: qsTr("Готовность")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label12
            x: 549
            y: 215
            width: 149
            height: 32
            color: "#ffffff"
            text: "Давление зажимов"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Connections {
        target: handler

        function onBl0(state) {
            rectangle7.up = state
            statusIndicator3.active = state
        }
        function onBl1(state) {
            rectangle7.down = state
            statusIndicator2.active = state
        }
        function onBl2(state) {
            rectangle8.up = state
            statusIndicator5.active = state
        }
        function onBl3(state) {
            rectangle8.down = state
            statusIndicator4.active = state
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.5;height:1024;width:1280}D{i:47}D{i:48}D{i:49}
D{i:50}D{i:51}D{i:52}D{i:53}D{i:54}D{i:55}D{i:58}D{i:60}
}
##^##*/

