import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle {
    property bool hide: false
    property bool show: false

    property var datastruct: [{
            "c_0": sec0c0.text,
            "c_1": sec0c1.text,
            "c_2": sec0c2.text,
            "c_3": sec0c3.text,
            "section": 0
        }, {
            "c_0": sec1c0.text,
            "c_1": sec1c1.text,
            "c_2": sec1c2.text,
            "c_3": sec1c3.text,
            "section": 1
        }, {
            "c_0": sec2c0.text,
            "c_1": sec2c1.text,
            "c_2": sec2c2.text,
            "c_3": sec2c3.text,
            "section": 2
        }, {
            "c_1": sec3c1.text,
            "c_2": sec3c2.text,
            "c_3": sec3c3.text,
            "c_0": sec3c0.text,
            "section": 3
        }, {
            "c_0": sec4c0.text,
            "c_1": sec4c1.text,
            "c_2": sec4c2.text,
            "c_3": sec4c3.text,
            "section": 4
        }, {
            "c_0": sec5c0.text,
            "c_1": sec5c1.text,
            "c_2": sec5c2.text,
            "c_3": sec5c3.text,
            "section": 5
        }, {
            "c_0": sec6c0.text,
            "c_1": sec6c1.text,
            "c_2": sec6c2.text,
            "c_3": sec6c3.text,
            "section": 6
        }, {
            "c_0": sec7c0.text,
            "c_1": sec7c1.text,
            "c_2": sec7c2.text,
            "c_3": sec7c3.text,
            "section": 7
        }, {
            "c_0": sec8c0.text,
            "c_1": sec8c1.text,
            "c_2": sec8c2.text,
            "c_3": sec8c3.text,
            "section": 8
        }, {
            "c_0": sec9c0.text,
            "c_1": sec9c1.text,
            "c_2": sec9c2.text,
            "c_3": sec9c3.text,
            "section": 9
        }]

    id: correctorRectangle
    x: 0
    y: 0
    width: 1264
    height: 490
    color: "#50000000"
    radius: 5
    visible: true

    NumberAnimation on x {
        to: -1300
        duration: 600
        running: correctorRectangle.hide
    }

    NumberAnimation on x {
        from: 1300
        to: 8
        duration: 600
        running: correctorRectangle.show
    }
    Row {
        id: row5
        x: 8
        y: 8
        width: 1248
        height: 30
        spacing: 5

        Label {
            id: label18
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("1")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label19
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("2")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label20
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("3")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label21
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("4")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label22
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("5")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label23
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("6")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label24
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("7")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label25
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("8")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label26
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("9")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label27
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("10")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Row {
        id: row6
        x: 8
        y: 118
        width: 1248
        height: 50
        spacing: 5

        TextField {
            id: sec0c0
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec0c1.focus = true
        }

        TextField {
            id: sec1c0
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec1c1.focus = true
        }

        TextField {
            id: sec2c0
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec2c1.focus = true
        }

        TextField {
            id: sec3c0
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec3c1.focus = true
        }

        TextField {
            id: sec4c0
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec4c1.focus = true
        }

        TextField {
            id: sec5c0
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec5c1.focus = true
        }

        TextField {
            id: sec6c0
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec6c1.focus = true
        }

        TextField {
            id: sec7c0
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec7c1.focus = true
        }

        TextField {
            id: sec8c0
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec8c1.focus = true
        }

        TextField {
            id: sec9c0
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec9c1.focus = true
        }
    }

    Label {
        id: label28
        x: 8
        y: 80
        width: 1248
        height: 30
        color: "#ffffff"
        text: qsTr("Ток коррекции, А")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom
    }

    Row {
        id: row7
        x: 8
        y: 210
        width: 1248
        height: 50
        spacing: 5
        TextField {
            id: sec0c1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec0c2.focus = true
        }

        TextField {
            id: sec1c1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec1c2.focus = true
        }

        TextField {
            id: sec2c1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec2c2.focus = true
        }

        TextField {
            id: sec3c1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec3c2.focus = true
        }

        TextField {
            id: sec4c1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec4c2.focus = true
        }

        TextField {
            id: sec5c1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec5c2.focus = true
        }

        TextField {
            id: sec6c1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec6c2.focus = true
        }

        TextField {
            id: sec7c1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec7c2.focus = true
        }

        TextField {
            id: sec8c1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec8c2.focus = true
        }

        TextField {
            id: sec9c1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec9c2.focus = true
        }
    }

    Label {
        id: label29
        x: 8
        y: 174
        width: 1248
        height: 30
        color: "#ffffff"
        text: qsTr("Ток останова, А")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom
    }

    Row {
        id: row8
        x: 8
        y: 302
        width: 1248
        height: 50
        spacing: 5
        TextField {
            id: sec0c2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec0c3.focus = true
        }

        TextField {
            id: sec1c2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec1c3.focus = true
        }

        TextField {
            id: sec2c2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec2c3.focus = true
        }

        TextField {
            id: sec3c2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec3c3.focus = true
        }

        TextField {
            id: sec4c2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec4c3.focus = true
        }

        TextField {
            id: sec5c2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec5c3.focus = true
        }

        TextField {
            id: sec6c2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec6c3.focus = true
        }

        TextField {
            id: sec7c2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec7c3.focus = true
        }

        TextField {
            id: sec8c2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec8c3.focus = true
        }

        TextField {
            id: sec9c2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec9c3.focus = true
        }
    }

    Label {
        id: label30
        x: 8
        y: 266
        width: 1248
        height: 30
        color: "#ffffff"
        text: qsTr("Ток реверса, А")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom
    }

    Row {
        id: row9
        x: 8
        y: 394
        width: 1248
        height: 50
        spacing: 5
        TextField {
            id: sec0c3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec1c0.focus = true
        }

        TextField {
            id: sec1c3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec2c0.focus = true
        }

        TextField {
            id: sec2c3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec3c0.focus = true
        }

        TextField {
            id: sec3c3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec4c0.focus = true
        }

        TextField {
            id: sec4c3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec5c0.focus = true
        }

        TextField {
            id: sec5c3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec6c0.focus = true
        }

        TextField {
            id: sec6c3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec7c0.focus = true
        }

        TextField {
            id: sec7c3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec8c0.focus = true
        }

        TextField {
            id: sec8c3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec9c0.focus = true
        }

        TextField {
            id: sec9c3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: {
                changeRectangle(reflowRectangle)
                sec0r0.focus = true
            }
        }
    }

    Label {
        id: label31
        x: 8
        y: 358
        width: 1248
        height: 30
        color: "#ffffff"
        text: qsTr("Ток КЗ, А")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom
    }

    Label {
        id: label32
        x: 8
        y: 44
        width: 621
        height: 30
        color: "#ffffff"
        text: qsTr("Параметры корректора")
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label33
        x: 635
        y: 44
        width: 621
        height: 30
        color: "#ffffff"
        text: "Номер участка"
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/

