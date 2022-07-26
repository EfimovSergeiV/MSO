import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle {
    property bool hide: false
    property bool show: false

    property var datastruct: {
        "b_0": b0.text,
        "b_1": b1.text,
        "b_2": b2.text,
        "b_3": b3.text,
        "b_4": b4.text,
        "b_5": b5.text,
        "b_6": b6.text,
        "b_7": b7.text
    }

    property var datastructcl: {
        "cl_0": cl0.text,
        "cl_1": cl1.text,
        "cl_2": cl2.text,
        "cl_3": cl3.text,
        "cl_4": cl4.text,
        "cl_5": cl5.text,
        "cl_6": cl6.text
    }

    id: rectangle12
    x: 5143
    y: 8
    width: 1264
    height: 490
    visible: true
    color: "#50000000"
    radius: 5

    NumberAnimation on x {
        to: -1300
        duration: 600
        running: rectangle12.hide
    }

    NumberAnimation on x {
        from: 1300
        to: 8
        duration: 600
        running: rectangle12.show
    }

    TextField {
        id: b0
        x: 8
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
        onAccepted: b1.focus = true
    }

    Label {
        id: label48
        x: 155
        y: 73
        width: 457
        height: 40
        color: "#ffffff"
        text: "Величина выжигания, м"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label49
        x: 8
        y: 8
        width: 1248
        height: 32
        color: "#ffffff"
        text: qsTr("Параметры выжигания")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 16
    }

    TextField {
        id: b1
        x: 8
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
        onAccepted: b2.focus = true
    }

    Label {
        id: label50
        x: 155
        y: 119
        width: 457
        height: 40
        color: "#ffffff"
        text: "Скорость вперёд, мм/с"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: b2
        x: 8
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
        onAccepted: b3.focus = true
    }

    Label {
        id: label51
        x: 155
        y: 165
        width: 457
        height: 40
        color: "#ffffff"
        text: "Скорость назад, мм/с"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: b3
        x: 8
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
        onAccepted: b4.focus = true
    }

    Label {
        id: label52
        x: 155
        y: 211
        width: 457
        height: 40
        color: "#ffffff"
        text: "Напряжжение выжигания"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: b4
        x: 8
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
        onAccepted: b5.focus = true
    }

    Label {
        id: label54
        x: 155
        y: 303
        width: 457
        height: 40
        color: "#ffffff"
        text: "I коррекции, А"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: b5
        x: 8
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
        onAccepted: b6.focus = true
    }

    Label {
        id: label55
        x: 155
        y: 349
        width: 457
        height: 40
        color: "#ffffff"
        text: "I останова, А"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: b6
        x: 8
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
        onAccepted: b7.focus = true
    }

    Label {
        id: label56
        x: 155
        y: 395
        width: 457
        height: 40
        color: "#ffffff"
        text: "I реверса, А"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: b7
        x: 8
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
        onAccepted: cl0.focus = true
    }

    Label {
        id: label57
        x: 155
        y: 441
        width: 457
        height: 40
        color: "#ffffff"
        text: "I КЗ, А"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: cl0
        x: 652
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
        onAccepted: cl1.focus = true
    }

    Label {
        id: label58
        x: 799
        y: 73
        width: 457
        height: 40
        color: "#ffffff"
        text: "Давление осадки/зажимов, Бар"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: cl1
        x: 652
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
        onAccepted: cl2.focus = true
    }

    Label {
        id: label59
        x: 799
        y: 119
        width: 457
        height: 40
        color: "#ffffff"
        text: "Исходное, мм"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: cl2
        x: 652
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
        onAccepted: cl3.focus = true
    }

    Label {
        id: label60
        x: 799
        y: 165
        width: 457
        height: 40
        color: "#ffffff"
        text: "Время проковки, мм"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: cl3
        x: 652
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
        onAccepted: cl4.focus = true
    }

    Label {
        id: label61
        x: 799
        y: 211
        width: 457
        height: 40
        color: "#ffffff"
        text: "Величина разведения, мм"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: cl4
        x: 652
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
        onAccepted: cl5.focus = true
    }

    Label {
        id: label62
        x: 799
        y: 257
        width: 457
        height: 40
        color: "#ffffff"
        text: "Скорость разведения, мм/с"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: cl5
        x: 652
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
        onAccepted: cl6.focus = true
    }

    Label {
        id: label65
        x: 799
        y: 395
        width: 457
        height: 40
        color: "#ffffff"
        text: "Срезка грата (1-вкл/0-выкл)"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: cl6
        x: 652
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
            changeRectangle(rectangle13)
            oth0.focus = true
        }
    }

    Label {
        id: label66
        x: 799
        y: 441
        width: 457
        height: 40
        color: "#ffffff"
        text: "Осадка (1-время/0-путь)"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66;height:490;width:1264}
}
##^##*/

