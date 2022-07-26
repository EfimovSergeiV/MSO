import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle {
    property bool hide: false
    property bool show: false

    id: programmRectangle
    x: 0
    y: 0
    width: 1264
    height: 504
    color: "#50000000"
    radius: 5
    visible: true

    //        NumberAnimation on x {
    //            to: -1300
    //            duration: 600
    //            running: programmRectangle.hide
    //        }

    //        NumberAnimation on x {
    //            from: 1300
    //            to: 8
    //            duration: 600
    //            running: programmRectangle.show
    //        }
    TextField {
        id: programmName
        x: 8
        y: 67
        width: 611
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark

        placeholderText: qsTr("Название программы")
        onAccepted: programmDescription.focus = true
    }

    Rectangle {
        id: rectangle2
        x: 8
        y: 113
        width: 1248
        height: 374
        color: "#ffffff"
        radius: 3

        TextArea {
            id: programmDescription
            x: 6
            y: 7
            width: 1234
            height: 359
            placeholderText: qsTr("Описание программы")
        }
    }

    Label {
        id: label16
        x: 645
        y: 13
        width: 611
        height: 35
        color: "#ffffff"
        text: "Допустимые диаметры:"
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 12
    }

    Label {
        id: label17
        x: 937
        y: 67
        width: 58
        height: 40
        color: "#ffffff"
        text: qsTr("-")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        font.pointSize: 16
    }

    TextField {
        id: minDiameter
        x: 676
        y: 67
        width: 255
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        placeholderText: qsTr("Минимальный")
        onAccepted: maxDiameter.focus = true
        validator: RegExpValidator {
            regExp: /(\d{1,3})([.,]\d{1,2})?$/
        }
    }

    //        TextField {
    //            id: maxDiameter
    //            x: 269
    //            y: 13
    //            width: 257
    //            height: 40
    //            horizontalAlignment: Text.AlignHCenter
    //            inputMethodHints: Qt.ImhDigitsOnly
    //            placeholderText: qsTr("Максимальный")
    //            validator: RegExpValidator {
    //                regExp: /(\d{1,3})([.,]\d{1,2})?$/
    //            }
    //            //            onAccepted: {
    //            //                changeRectangle(correctorRectangle)
    //            //                sec0c0.focus = true
    //            //            }
    //        }
    Label {
        id: label108
        x: 8
        y: 13
        width: 611
        height: 35
        color: "#ffffff"
        text: "Программа  сварки"
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 12
    }

    TextField {
        id: maxDiameter
        x: 1001
        y: 67
        width: 255
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("Максимальный")
        validator: RegExpValidator {
            regExp: /(\d{1,3})([.,]\d{1,2})?$/
        }
        inputMethodHints: Qt.ImhDigitsOnly
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:504;width:1264}
}
##^##*/

