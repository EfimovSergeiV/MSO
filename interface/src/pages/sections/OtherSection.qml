import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle {
    property bool hide: false
    property bool show: false

    property var datastruct: {
        "oth_0": oth0.text,
        "oth_1": oth1.text,
        "oth_2": oth2.text,
        "oth_3": oth3.text,
        "oth_4": oth4.text,
        "oth_5": oth5.text,
        "oth_6": oth6.text,
        "oth_7": oth7.text,
        "oth_8": oth8.text,
        "oth_9": oth9.text,
        "oth_10": oth10.text,
        "oth_11": oth11.text,
        "oth_12": oth12.text,
        "oth_13": oth13.text,
        "oth_14": oth14.text,
        "oth_15": oth15.text,
        "oth_16": oth16.text,
        "oth_17": oth17.text
    }

    id: rectangle13
    x: 6432
    y: 8
    width: 1264
    height: 490
    visible: true
    color: "#50000000"
    radius: 5

    NumberAnimation on x {
        to: -1300
        duration: 600
        running: rectangle13.hide
    }

    NumberAnimation on x {
        from: 1300
        to: 8
        duration: 600
        running: rectangle13.show
    }

    TextField {
        id: oth0
        x: 10
        y: 73
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth1.focus = true
    }

    Label {
        id: label53
        x: 157
        y: 73
        width: 457
        height: 40
        color: "#ffffff"
        text: "Крайнее разведённое положение, мм"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label63
        x: 8
        y: 8
        width: 1248
        height: 32
        color: "#ffffff"
        text: qsTr("Параметры цикла сварки")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 16
    }

    TextField {
        id: oth1
        x: 10
        y: 119
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth2.focus = true
    }

    Label {
        id: label64
        x: 157
        y: 119
        width: 457
        height: 40
        color: "#ffffff"
        text: "Крайнее сведённое положение, мм"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth2
        x: 10
        y: 165
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth3.focus = true
    }

    Label {
        id: label67
        x: 157
        y: 165
        width: 457
        height: 40
        color: "#ffffff"
        text: "Зона возможного запуска, мм"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth3
        x: 10
        y: 211
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth4.focus = true
    }

    Label {
        id: label68
        x: 157
        y: 211
        width: 457
        height: 40
        color: "#ffffff"
        text: "Расстояние между эл. в сведённом положении, мм"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth4
        x: 10
        y: 257
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth5.focus = true
    }

    Label {
        id: label69
        x: 157
        y: 303
        width: 457
        height: 40
        color: "#ffffff"
        text: "Установка контроля положения плиты, мм"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth5
        x: 10
        y: 303
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth6.focus = true
    }

    Label {
        id: label70
        x: 157
        y: 349
        width: 457
        height: 40
        color: "#ffffff"
        text: "Установка наличия проскальзования, мм"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth6
        x: 10
        y: 349
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth7.focus = true
    }

    Label {
        id: label71
        x: 157
        y: 395
        width: 457
        height: 40
        color: "#ffffff"
        text: "Конечное положение при срезке грата, мм"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth7
        x: 10
        y: 395
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth8.focus = true
    }

    Label {
        id: label72
        x: 157
        y: 441
        width: 457
        height: 40
        color: "#ffffff"
        text: "Скорость сведения, мм/с"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth8
        x: 10
        y: 441
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth9.focus = true
    }

    Label {
        id: label73
        x: 801
        y: 73
        width: 457
        height: 40
        color: "#ffffff"
        text: "Скорость разведения, мм/с"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth9
        x: 654
        y: 73
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth10.focus = true
    }

    Label {
        id: label74
        x: 801
        y: 119
        width: 457
        height: 40
        color: "#ffffff"
        text: "Скорость выхода в исходное положение, мм/с"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth10
        x: 654
        y: 119
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth11.focus = true
    }

    Label {
        id: label75
        x: 801
        y: 165
        width: 457
        height: 40
        color: "#ffffff"
        text: "Скорость движения в тесте, мм/с"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth11
        x: 654
        y: 165
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth12.focus = true
    }

    Label {
        id: label76
        x: 801
        y: 211
        width: 457
        height: 40
        color: "#ffffff"
        text: "Напряжение в ручном режиме, %"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth12
        x: 654
        y: 211
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth13.focus = true
    }

    Label {
        id: label77
        x: 801
        y: 257
        width: 457
        height: 40
        color: "#ffffff"
        text: "Разжим ПК, мс"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth13
        x: 654
        y: 257
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth14.focus = true
    }

    Label {
        id: label78
        x: 801
        y: 395
        width: 457
        height: 40
        color: "#ffffff"
        text: "Время контроля осадки, мс"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth14
        x: 654
        y: 303
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth15.focus = true
    }

    Label {
        id: label79
        x: 801
        y: 441
        width: 457
        height: 40
        color: "#ffffff"
        text: "Время контроля срезки, мс"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth15
        x: 654
        y: 349
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth16.focus = true
    }

    Label {
        id: label96
        x: 157
        y: 257
        width: 457
        height: 40
        color: "#ffffff"
        text: "Путь выключения клапана осадки, мм"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth16
        x: 654
        y: 395
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: oth17.focus = true
    }

    Label {
        id: label97
        x: 801
        y: 303
        width: 457
        height: 40
        color: "#ffffff"
        text: "Разжим НК, мс"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: oth17
        x: 654
        y: 441
        width: 141
        height: 40
        placeholderText: qsTr("0")
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: {
            changeRectangle(rectangle14)
            minPositionSensor.focus = true
        }
    }

    Label {
        id: label98
        x: 801
        y: 349
        width: 457
        height: 40
        color: "#ffffff"
        text: "Время подразжима, мс"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/

