import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    id: item1
    Rectangle {
        id: rectangle
        color: "#133656"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Button {
            id: button
            x: 1025
            y: 976
            width: 247
            height: 40
            text: qsTr("Выход")
            onClicked: {
                stackView.push(Qt.resolvedUrl("programms.qml"))
            }
        }

        Row {
            id: row
            x: 8
            y: 8
            width: 1264
            height: 50
            spacing: 4

            Label {
                id: label
                width: 123
                height: 50
                color: "#ffffff"
                text: qsTr("1")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label1
                width: 123
                height: 50
                color: "#ffffff"
                text: qsTr("2")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label2
                width: 123
                height: 50
                color: "#ffffff"
                text: qsTr("3")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label3
                width: 123
                height: 50
                color: "#ffffff"
                text: qsTr("4")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label4
                width: 123
                height: 50
                color: "#ffffff"
                text: qsTr("5")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label5
                width: 123
                height: 50
                color: "#ffffff"
                text: qsTr("6")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label6
                width: 123
                height: 50
                color: "#ffffff"
                text: qsTr("7")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label7
                width: 123
                height: 50
                color: "#ffffff"
                text: qsTr("8")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label8
                width: 123
                height: 50
                color: "#ffffff"
                text: qsTr("9")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label9
                width: 123
                height: 50
                color: "#ffffff"
                text: qsTr("10")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Row {
            id: row1
            x: 8
            y: 132
            width: 1264
            height: 50
            spacing: 4

            TextField {
                id: textField
                width: 123
                height: 50
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
            }

            TextField {
                id: textField1
                width: 123
                height: 50
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
            }

            TextField {
                id: textField2
                width: 123
                height: 50
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
            }

            TextField {
                id: textField3
                width: 123
                height: 50
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
            }

            TextField {
                id: textField4
                width: 123
                height: 50
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
            }

            TextField {
                id: textField5
                width: 123
                height: 50
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
            }

            TextField {
                id: textField6
                width: 123
                height: 50
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
            }

            TextField {
                id: textField7
                width: 123
                height: 50
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
            }

            TextField {
                id: textField8
                width: 123
                height: 50
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
            }

            TextField {
                id: textField9
                width: 123
                height: 50
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
            }
        }

        Label {
            id: label10
            x: 635
            y: 64
            width: 637
            height: 24
            color: "#ffffff"
            text: "Номер участка"
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label11
            x: 8
            y: 64
            width: 621
            height: 24
            color: "#ffffff"
            text: qsTr("Параметры оплавления")
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: label12
            x: 8
            y: 94
            width: 1264
            height: 32
            color: "#ffffff"
            text: qsTr("S, mm")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Button {
            id: button1
            x: 780
            y: 976
            width: 239
            height: 40
            text: qsTr("Button")
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:1024;width:1280}
}
##^##*/

