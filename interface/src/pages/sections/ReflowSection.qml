import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle {
    property bool hide: false
    property bool show: false

    id: reflowRectangle
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
        y: 92
        width: 1248
        height: 32
        color: "#ffffff"
        text: qsTr("S, mm")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Row {
        id: row1
        x: 8
        y: 130
        width: 1248
        height: 50
        spacing: 5

        TextField {
            id: sec0r0
            width: 120
            height: 50
            placeholderText: qsTr("0 sec0")
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec0r1.focus = true
        }

        TextField {
            id: sec1r0
            width: 120
            height: 50
            placeholderText: qsTr("0 sec1")
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec1r1.focus = true
        }

        TextField {
            id: sec2r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec2r1.focus = true
        }

        TextField {
            id: sec3r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec3r1.focus = true
        }

        TextField {
            id: sec4r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec4r1.focus = true
        }

        TextField {
            id: sec5r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec5r1.focus = true
        }

        TextField {
            id: sec6r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec6r1.focus = true
        }

        TextField {
            id: sec7r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec7r1.focus = true
        }

        TextField {
            id: sec8r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec8r1.focus = true
        }

        TextField {
            id: sec9r0
            width: 120
            height: 50
            placeholderText: qsTr("0")
            horizontalAlignment: Text.AlignHCenter
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec9r1.focus = true
        }
    }

    Label {
        id: label13
        x: 8
        y: 192
        width: 1248
        height: 32
        color: "#ffffff"
        text: qsTr("Скорость вперёд, mm/c")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Row {
        id: row2
        x: 8
        y: 230
        width: 1248
        height: 50
        spacing: 5
        TextField {
            id: sec0r1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec0r2.focus = true
        }

        TextField {
            id: sec1r1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec1r2.focus = true
        }

        TextField {
            id: sec2r1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec2r2.focus = true
        }

        TextField {
            id: sec3r1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec3r2.focus = true
        }

        TextField {
            id: sec4r1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec4r2.focus = true
        }

        TextField {
            id: sec5r1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec5r2.focus = true
        }

        TextField {
            id: sec6r1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec6r2.focus = true
        }

        TextField {
            id: sec7r1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec7r2.focus = true
        }

        TextField {
            id: sec8r1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec8r2.focus = true
        }

        TextField {
            id: sec9r1
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec9r2.focus = true
        }
    }

    Label {
        id: label14
        x: 8
        y: 298
        width: 1248
        height: 32
        color: "#ffffff"
        text: qsTr("Скорость назад, mm/c")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Row {
        id: row3
        x: 8
        y: 330
        width: 1248
        height: 50
        spacing: 5

        TextField {
            id: sec0r2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec0r3.focus = true
        }

        TextField {
            id: sec1r2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec1r3.focus = true
        }

        TextField {
            id: sec2r2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec2r3.focus = true
        }

        TextField {
            id: sec3r2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec3r3.focus = true
        }

        TextField {
            id: sec4r2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec4r3.focus = true
        }

        TextField {
            id: sec5r2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec5r3.focus = true
        }

        TextField {
            id: sec6r2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec6r3.focus = true
        }

        TextField {
            id: sec7r2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec7r3.focus = true
        }

        TextField {
            id: sec8r2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec8r3.focus = true
        }

        TextField {
            id: sec9r2
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec9r3.focus = true
        }
    }

    Row {
        id: row4
        x: 8
        y: 439
        width: 1248
        height: 50
        spacing: 5

        TextField {
            id: sec0r3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec1r0.focus = true
        }

        TextField {
            id: sec1r3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec2r0.focus = true
        }

        TextField {
            id: sec2r3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec3r0.focus = true
        }

        TextField {
            id: sec3r3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec4r0.focus = true
        }

        TextField {
            id: sec4r3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec5r0.focus = true
        }

        TextField {
            id: sec5r3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec6r0.focus = true
        }

        TextField {
            id: sec6r3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec7r0.focus = true
        }

        TextField {
            id: sec7r3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec8r0.focus = true
        }

        TextField {
            id: sec8r3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            onAccepted: sec9r0.focus = true
        }

        TextField {
            id: sec9r3
            width: 120
            height: 50
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("0")
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
        y: 401
        width: 1248
        height: 32
        color: "#ffffff"
        text: qsTr("U, %")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Label {
        id: label11
        x: 8
        y: 44
        width: 621
        height: 42
        color: "#ffffff"
        text: qsTr("Параметры оплавления")
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 16
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
    D{i:0;formeditorZoom:0.66}
}
##^##*/

