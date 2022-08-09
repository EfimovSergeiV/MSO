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
            icon.name: "charts"
            icon.source: "../content/chart-areaspline.png"
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
            icon.name: "charts"
            icon.source: "../content/keyboard-return.png"
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
            id: bl16value
            x: 8
            y: 60
            color: "green"
            active: false
        }

        StatusIndicator {
            id: bl15value
            x: 8
            y: 8
            color: "green"
            active: false
        }

        StatusIndicator {
            id: bl0value
            x: 457
            y: 289
            color: "green"
            active: false
        }

        StatusIndicator {
            id: bl1value
            x: 457
            y: 381
            color: "green"
            active: false
        }

        StatusIndicator {
            id: bl2value
            x: 755
            y: 289
            color: "green"
            active: false
        }

        StatusIndicator {
            id: bl3value
            x: 755
            y: 381
            color: "green"
            active: false
        }

        StatusIndicator {
            id: bl19value
            x: 605
            y: 484
            width: 37
            height: 40
            color: "green"
        }

        StatusIndicator {
            id: bl4value
            x: 649
            y: 570
            width: 56
            height: 40
            color: "green"
        }

        StatusIndicator {
            id: bl7value
            x: 220
            y: 450
            color: "green"
        }

        StatusIndicator {
            id: bl8value
            x: 220
            y: 527
            color: "green"
        }

        StatusIndicator {
            id: bl5value
            x: 993
            y: 450
            color: "green"
        }

        StatusIndicator {
            id: bl6value
            x: 993
            y: 527
            color: "green"
        }

        StatusIndicator {
            id: bl9value
            x: 908
            y: 234
            width: 79
            height: 82
            color: "green"
        }

        StatusIndicator {
            id: bl10value
            x: 1234
            y: 8
            color: "green"
        }

        StatusIndicator {
            id: bl11value
            x: 1234
            y: 52
            color: "green"
        }

        StatusIndicator {
            id: bl12value
            x: 1234
            y: 96
            color: "green"
        }

        StatusIndicator {
            id: bl14value
            x: 1234
            y: 140
            color: "green"
        }

        StatusIndicator {
            id: bl17value
            x: 1234
            y: 184
            color: "green"
        }

        StatusIndicator {
            id: bl18value
            x: 1234
            y: 228
            color: "green"
        }

        StatusIndicator {
            id: bl13value
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
            x: 884
            y: 206
            width: 126
            height: 22
            color: "#ffffff"
            text: qsTr("Готовность")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.capitalization: Font.AllUppercase
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

        Rectangle {
            id: rectangle28
            x: 8
            y: 792
            width: 150
            height: 40
            color: "#ffffff"

            Label {
                id: nd7value
                x: 0
                y: 0
                width: 150
                height: 40
                text: qsTr("0,0")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Label {
            id: label13
            x: 164
            y: 884
            width: 110
            height: 40
            color: "#ffffff"
            text: qsTr("Sпл, мм")
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label14
            x: 164
            y: 930
            width: 110
            height: 40
            color: "#ffffff"
            text: qsTr("Iсв, А")
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label15
            x: 164
            y: 976
            width: 110
            height: 40
            color: "#ffffff"
            text: qsTr("№ участка")
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label16
            x: 474
            y: 884
            width: 110
            height: 40
            color: "#ffffff"
            text: qsTr("№ программы")
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label17
            x: 474
            y: 930
            width: 110
            height: 40
            color: "#ffffff"
            text: qsTr("Время сварки")
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label18
            x: 474
            y: 976
            width: 110
            height: 40
            color: "#ffffff"
            text: qsTr("Т масла")
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label19
            x: 165
            y: 838
            width: 265
            height: 40
            color: "#ffffff"
            text: qsTr("Скорость осадки")
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label21
            x: 165
            y: 792
            width: 265
            height: 40
            color: "#ffffff"
            text: qsTr("Величина осадки")
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            id: rectangle29
            x: 9
            y: 838
            width: 150
            height: 40
            color: "#ffffff"
            Label {
                id: nd6value
                x: 0
                y: 0
                width: 150
                height: 40
                text: qsTr("0,0")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: rectangle30
            x: 9
            y: 884
            width: 150
            height: 40
            color: "#ffffff"
            Label {
                id: nd1value
                x: 0
                y: 0
                width: 150
                height: 40
                text: qsTr("0,0")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: rectangle31
            x: 9
            y: 930
            width: 150
            height: 40
            color: "#ffffff"
            Label {
                id: nd2value
                x: 0
                y: 0
                width: 150
                height: 40
                text: qsTr("0,0")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: rectangle32
            x: 9
            y: 976
            width: 150
            height: 40
            color: "#ffffff"
            Label {
                id: nd9value
                x: 0
                y: 0
                width: 150
                height: 40
                text: qsTr("0,0")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: rectangle33
            x: 318
            y: 884
            width: 150
            height: 40
            color: "#ffffff"
            Label {
                id: nd3value
                x: 0
                y: 0
                width: 150
                height: 40
                text: qsTr("0,0")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: rectangle34
            x: 318
            y: 930
            width: 150
            height: 40
            color: "#ffffff"
            Label {
                id: nd4value
                x: 0
                y: 0
                width: 150
                height: 40
                text: qsTr("0,0")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: rectangle35
            x: 318
            y: 976
            width: 150
            height: 40
            color: "#ffffff"
            Label {
                id: nd5value
                x: 0
                y: 0
                width: 150
                height: 40
                text: qsTr("0,0")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: rectangle36
            x: 549
            y: 249
            width: 150
            height: 40
            color: "#ffffff"
            Label {
                id: nd8value
                x: 0
                y: 0
                width: 150
                height: 40
                text: qsTr("0,0")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: rectangle37
            x: 718
            y: 570
            width: 150
            height: 40
            color: "#ffffff"
            Label {
                id: nd10value
                x: 0
                y: 0
                width: 150
                height: 40
                text: qsTr("0,0")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }

    Connections {
        target: handler

        function onBl0(state) {
            rectangle7.up = state
            bl1value.active = state
        }
        function onBl1(state) {
            rectangle7.down = state
            bl0value.active = state
        }
        function onBl2(state) {
            rectangle8.up = state
            bl3value.active = state
        }
        function onBl3(state) {
            rectangle8.down = state
            bl4value.active = state
        }
        ///// BL not action
        function onBl4(state) {
            bl4value.active = state
        }
        function onBl5(state) {
            bl5value.active = state
        }
        function onBl6(state) {
            bl6value.active = state
        }
        function onBl7(state) {
            bl7value.active = state
        }
        function onBl8(state) {
            bl8value.active = state
        }
        function onBl9(state) {
            bl9value.active = state
        }
        function onBl10(state) {
            bl10value.active = state
        }
        function onBl11(state) {
            bl11value.active = state
        }
        function onBl12(state) {
            bl12value.active = state
        }
        function onBl13(state) {
            bl13value.active = state
        }
        function onBl14(state) {
            bl14value.active = state
        }
        function onBl15(state) {
            bl15value.active = state
        }
        function onBl16(state) {
            bl16value.active = state
        }
        function onBl17(state) {
            bl17value.active = state
        }
        function onBl18(state) {
            bl18value.active = state
        }
        function onBl19(state) {
            bl19value.active = state
        }
        ///// ND
        function onNd0(value) {
            nd0value.text = value
        }
        function onNd1(value) {
            nd1value.text = value
        }
        function onNd2(value) {
            nd2value.text = value
        }
        function onNd3(value) {
            nd3value.text = value
        }
        function onNd4(value) {
            nd4value.text = value
        }
        function onNd5(value) {
            nd5value.text = value
        }
        function onNd6(value) {
            nd6value.text = value
        }
        function onNd7(value) {
            nd7value.text = value
        }
        function onNd8(value) {
            nd8value.text = value
        }
        function onNd9(value) {
            nd9value.text = value
        }
        function onNd10(value) {
            nd10value.text = value
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.25;height:1024;width:1280}
}
##^##*/

