import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle {
    property bool hide: false
    property bool show: false

    property var datastruct: [{
            "r_0": sec0r0.text,
            "r_1": sec0r1.text,
            "r_2": sec0r2.text,
            "r_3": sec0r3.text,
            "section": 0
        }, {
            "r_0": sec1r0.text,
            "r_1": sec1r1.text,
            "r_2": sec1r2.text,
            "r_3": sec1r3.text,
            "section": 1
        }, {
            "r_0": sec2r0.text,
            "r_1": sec2r1.text,
            "r_2": sec2r2.text,
            "r_3": sec2r3.text,
            "section": 2
        }, {
            "r_1": sec3r1.text,
            "r_2": sec3r2.text,
            "r_3": sec3r3.text,
            "r_0": sec3r0.text,
            "section": 3
        }, {
            "r_0": sec4r0.text,
            "r_1": sec4r1.text,
            "r_2": sec4r2.text,
            "r_3": sec4r3.text,
            "section": 4
        }, {
            "r_0": sec5r0.text,
            "r_1": sec5r1.text,
            "r_2": sec5r2.text,
            "r_3": sec5r3.text,
            "section": 5
        }, {
            "r_0": sec6r0.text,
            "r_1": sec6r1.text,
            "r_2": sec6r2.text,
            "r_3": sec6r3.text,
            "section": 6
        }, {
            "r_0": sec7r0.text,
            "r_1": sec7r1.text,
            "r_2": sec7r2.text,
            "r_3": sec7r3.text,
            "section": 7
        }, {
            "r_0": sec8r0.text,
            "r_1": sec8r1.text,
            "r_2": sec8r2.text,
            "r_3": sec8r3.text,
            "section": 8
        }, {
            "r_0": sec9r0.text,
            "r_1": sec9r1.text,
            "r_2": sec9r2.text,
            "r_3": sec9r3.text,
            "section": 9
        }]

    id: reflowRectangle
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
        running: reflowRectangle.hide
    }

    NumberAnimation on x {
        from: 1300
        to: 8
        duration: 600
        running: reflowRectangle.show
    }
    Row {
        id: row
        x: 8
        y: 8
        width: 1248
        height: 30
        spacing: 5

        Label {
            id: label
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("1")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label1
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("2")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label2
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("3")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label3
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("4")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label4
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("5")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label5
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("6")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label6
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("7")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label7
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("8")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label8
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("9")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label9
            width: 120
            height: 30
            color: "#ffffff"
            text: qsTr("10")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Label {
        id: label12
        x: 8
        y: 80
        width: 1248
        height: 30
        color: "#ffffff"
        text: qsTr("S, mm")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom
    }
    Row {
        id: row1
        x: 8
        y: 118
        width: 1248
        height: 50
        spacing: 5

        TextField {
            id: sec0r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec0r1.focus = true
        }

        TextField {
            id: sec1r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec1r1.focus = true
        }

        TextField {
            id: sec2r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec2r1.focus = true
        }

        TextField {
            id: sec3r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec3r1.focus = true
        }

        TextField {
            id: sec4r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec4r1.focus = true
        }

        TextField {
            id: sec5r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec5r1.focus = true
        }

        TextField {
            id: sec6r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec6r1.focus = true
        }

        TextField {
            id: sec7r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec7r1.focus = true
        }

        TextField {
            id: sec8r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec8r1.focus = true
        }

        TextField {
            id: sec9r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            color: "#ffffff"
            placeholderTextColor: "#ffffff"
            Material.accent: Material.Blue
            Material.background: Material.Blue
            Material.theme: Material.Dark
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec9r1.focus = true
        }
    }

    Label {
        id: label13
        x: 8
        y: 174
        width: 1248
        height: 30
        color: "#ffffff"
        text: qsTr("Скорость вперёд, mm/c")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom
    }
    Row {
        id: row2
        x: 8
        y: 210
        width: 1248
        height: 50
        spacing: 5
        TextField {
            id: sec0r1
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
            onAccepted: sec0r2.focus = true
        }

        TextField {
            id: sec1r1
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
            onAccepted: sec1r2.focus = true
        }

        TextField {
            id: sec2r1
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
            onAccepted: sec2r2.focus = true
        }

        TextField {
            id: sec3r1
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
            onAccepted: sec3r2.focus = true
        }

        TextField {
            id: sec4r1
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
            onAccepted: sec4r2.focus = true
        }

        TextField {
            id: sec5r1
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
            onAccepted: sec5r2.focus = true
        }

        TextField {
            id: sec6r1
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
            onAccepted: sec6r2.focus = true
        }

        TextField {
            id: sec7r1
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
            onAccepted: sec7r2.focus = true
        }

        TextField {
            id: sec8r1
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
            onAccepted: sec8r2.focus = true
        }

        TextField {
            id: sec9r1
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
            onAccepted: sec9r2.focus = true
        }
    }

    Label {
        id: label14
        x: 8
        y: 266
        width: 1248
        height: 30
        color: "#ffffff"
        text: qsTr("Скорость назад, mm/c")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom
    }
    Row {
        id: row3
        x: 8
        y: 302
        width: 1248
        height: 50
        spacing: 5

        TextField {
            id: sec0r2
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
            onAccepted: sec0r3.focus = true
        }

        TextField {
            id: sec1r2
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
            onAccepted: sec1r3.focus = true
        }

        TextField {
            id: sec2r2
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
            onAccepted: sec2r3.focus = true
        }

        TextField {
            id: sec3r2
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
            onAccepted: sec3r3.focus = true
        }

        TextField {
            id: sec4r2
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
            onAccepted: sec4r3.focus = true
        }

        TextField {
            id: sec5r2
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
            onAccepted: sec5r3.focus = true
        }

        TextField {
            id: sec6r2
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
            onAccepted: sec6r3.focus = true
        }

        TextField {
            id: sec7r2
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
            onAccepted: sec7r3.focus = true
        }

        TextField {
            id: sec8r2
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
            onAccepted: sec8r3.focus = true
        }

        TextField {
            id: sec9r2
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
            onAccepted: sec9r3.focus = true
        }
    }

    Row {
        id: row4
        x: 8
        y: 394
        width: 1248
        height: 50
        spacing: 5

        TextField {
            id: sec0r3
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
            onAccepted: sec1r0.focus = true
        }

        TextField {
            id: sec1r3
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
            onAccepted: sec2r0.focus = true
        }

        TextField {
            id: sec2r3
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
            onAccepted: sec3r0.focus = true
        }

        TextField {
            id: sec3r3
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
            onAccepted: sec4r0.focus = true
        }

        TextField {
            id: sec4r3
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
            onAccepted: sec5r0.focus = true
        }

        TextField {
            id: sec5r3
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
            onAccepted: sec6r0.focus = true
        }

        TextField {
            id: sec6r3
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
            onAccepted: sec7r0.focus = true
        }

        TextField {
            id: sec7r3
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
            onAccepted: sec8r0.focus = true
        }

        TextField {
            id: sec8r3
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
            onAccepted: sec9r0.focus = true
        }

        TextField {
            id: sec9r3
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
                changeRectangle(rectangle11)
                ph0.focus = true
            }
        }
    }

    Label {
        id: label15
        x: 8
        y: 358
        width: 1248
        height: 30
        color: "#ffffff"
        text: qsTr("U, %")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom
    }

    Label {
        id: label11
        x: 8
        y: 44
        width: 621
        height: 30
        color: "#ffffff"
        text: qsTr("Параметры оплавления")
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label10
        x: 635
        y: 44
        width: 621
        height: 29
        color: "#ffffff"
        text: "Номер участка"
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66;height:490;width:1264}
}
##^##*/

