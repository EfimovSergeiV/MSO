import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle {
    property bool hide: false
    property bool show: false

    property var datastruct: {
        "ph_0": ph0.text,
        "ph_1": ph1.text,
        "ph_2": ph2.text,
        "ph_3": ph3.text,
        "ph_4": ph4.text,
        "ph_5": ph5.text,
        "ph_6": ph6.text,
        "ph_7": ph7.text,
        "ph_8": ph8.text,
        "ph_9": ph9.text,
        "ph_10": ph10.text,
        "ph_11": ph11.text,
        "ph_12": ph12.text
    }

    id: rectangle11
    x: 0
    y: 0
    width: 1264
    height: 504
    color: "#50000000"
    radius: 5
    visible: true

    NumberAnimation on x {
        to: -1300
        duration: 600
        running: rectangle11.hide
    }

    NumberAnimation on x {
        from: 1300
        to: 8
        duration: 600
        running: rectangle11.show
    }

    Label {
        id: label34
        x: 8
        y: 8
        width: 1248
        height: 32
        color: "#ffffff"
        text: qsTr("Параметры подогрева")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 16
    }

    TextField {
        id: ph0
        x: 9
        y: 70
        width: 141
        height: 40
        placeholderText: qsTr("0")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: ph1.focus = true
    }

    Label {
        id: label35
        x: 156
        y: 70
        width: 457
        height: 40
        color: "#ffffff"
        text: "Скорость вперёд, мм/с"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: ph1
        x: 9
        y: 116
        width: 141
        height: 40
        placeholderText: qsTr("0")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: ph2.focus = true
    }

    Label {
        id: label36
        x: 156
        y: 116
        width: 457
        height: 40
        color: "#ffffff"
        text: "Скорость уплотнения, мм/с"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: ph2
        x: 9
        y: 162
        width: 141
        height: 40
        placeholderText: qsTr("0")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: ph3.focus = true
    }

    Label {
        id: label39
        x: 156
        y: 256
        width: 457
        height: 40
        color: "#ffffff"
        text: "Время уплотнения, мс"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: ph3
        x: 9
        y: 210
        width: 141
        height: 40
        placeholderText: qsTr("0")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: ph4.focus = true
    }

    Label {
        id: label42
        x: 156
        y: 396
        width: 457
        height: 40
        color: "#ffffff"
        text: "Число импульсов"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: ph4
        x: 9
        y: 256
        width: 141
        height: 40
        placeholderText: qsTr("0")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: ph5.focus = true
    }

    Label {
        id: label37
        x: 156
        y: 161
        width: 457
        height: 40
        color: "#ffffff"
        text: "Скорость назад, мм/с"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: ph5
        x: 9
        y: 304
        width: 141
        height: 40
        placeholderText: qsTr("0")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: ph6.focus = true
    }

    Label {
        id: label40
        x: 156
        y: 304
        width: 457
        height: 40
        color: "#ffffff"
        text: "Время подогрева, мс"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: ph6
        x: 9
        y: 350
        width: 141
        height: 40
        placeholderText: qsTr("0")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: ph7.focus = true
    }

    Label {
        id: label43
        x: 156
        y: 444
        width: 457
        height: 40
        color: "#ffffff"
        text: "Ток КЗ, А"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: ph7
        x: 9
        y: 396
        width: 141
        height: 40
        placeholderText: qsTr("0")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: ph8.focus = true
    }

    Label {
        id: label38
        x: 156
        y: 207
        width: 457
        height: 40
        color: "#ffffff"
        text: "Скорость последнего разведения, мм/с"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: ph8
        x: 9
        y: 444
        width: 141
        height: 40
        placeholderText: qsTr("0")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: ph9.focus = true
    }

    Label {
        id: label41
        x: 156
        y: 350
        width: 457
        height: 40
        color: "#ffffff"
        text: "Время паузы, мс"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: ph9
        x: 653
        y: 70
        width: 141
        height: 40
        placeholderText: qsTr("0")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: ph10.focus = true
    }

    Label {
        id: label44
        x: 800
        y: 70
        width: 457
        height: 40
        color: "#ffffff"
        text: "Ток ХХ, А"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: ph10
        x: 653
        y: 116
        width: 141
        height: 40
        placeholderText: qsTr("0")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: ph11.focus = true
    }

    Label {
        id: label45
        x: 800
        y: 116
        width: 457
        height: 40
        color: "#ffffff"
        text: "Напряжение подогрева, %"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: ph11
        x: 653
        y: 161
        width: 141
        height: 40
        placeholderText: qsTr("0")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: ph12.focus = true
    }

    Label {
        id: label46
        x: 800
        y: 161
        width: 457
        height: 40
        color: "#ffffff"
        text: "Время осадки с током, мс"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: ph12
        x: 653
        y: 207
        width: 141
        height: 40
        placeholderText: qsTr("0")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: {
            changeRectangle(rectangle12)
            b0.focus = true
        }
    }

    Label {
        id: label47
        x: 800
        y: 207
        width: 457
        height: 40
        color: "#ffffff"
        text: "Величина осадки, мм"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66;height:504;width:1264}
}
##^##*/

