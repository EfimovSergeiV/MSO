import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    id: keyboard

    property string strData: ""
    property real realData: strData
    property string keyData: "progOne"

    property bool show: true

    function makeRealData(val) {
        strData = strData + val
    }

    Rectangle {
        id: rectangle
        y: 0
        height: 400
        color: "#d8000000"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        visible: keyboard.show

        Rectangle {
            id: abcRectangle
            width: 848
            height: 319
            color: "#00000000"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            visible: true

            KeyButton {
                id: keyButton
                x: 7
                y: 10
                width: 70
                height: 70
                keyname: "й"
            }

            KeyButton {
                id: keyButton1
                x: 83
                y: 10
                width: 70
                height: 70
                keyname: "ц"
            }

            KeyButton {
                id: keyButton2
                x: 159
                y: 10
                width: 70
                height: 70
                keyname: "у"
            }

            KeyButton {
                id: keyButton3
                x: 235
                y: 10
                width: 70
                height: 70
                keyname: "к"
            }

            KeyButton {
                id: keyButton4
                x: 311
                y: 10
                width: 70
                height: 70
                keyname: "е"
            }

            KeyButton {
                id: keyButton5
                x: 387
                y: 10
                width: 70
                height: 70
                keyname: "н"
            }

            KeyButton {
                id: keyButton6
                x: 463
                y: 10
                width: 70
                height: 70
                keyname: "г"
            }

            KeyButton {
                id: keyButton7
                x: 539
                y: 10
                width: 70
                height: 70
                keyname: "ш"
            }

            KeyButton {
                id: keyButton8
                x: 615
                y: 10
                width: 70
                height: 70
                keyname: "щ"
            }

            KeyButton {
                id: keyButton9
                x: 691
                y: 10
                width: 70
                height: 70
                keyname: "з"
            }

            KeyButton {
                id: keyButton10
                x: 767
                y: 10
                width: 70
                height: 70
                keyname: "х"
            }

            KeyButton {
                id: keyButton11
                x: 7
                y: 86
                width: 70
                height: 70
                keyname: "ф"
            }

            KeyButton {
                id: keyButton12
                x: 83
                y: 86
                width: 70
                height: 70
                keyname: "ы"
            }

            KeyButton {
                id: keyButton13
                x: 159
                y: 86
                width: 70
                height: 70
                keyname: "в"
            }

            KeyButton {
                id: keyButton14
                x: 235
                y: 86
                width: 70
                height: 70
                keyname: "а"
            }

            KeyButton {
                id: keyButton15
                x: 311
                y: 86
                width: 70
                height: 70
                keyname: "п"
            }

            KeyButton {
                id: keyButton16
                x: 387
                y: 86
                width: 70
                height: 70
                keyname: "р"
            }

            KeyButton {
                id: keyButton17
                x: 463
                y: 86
                width: 70
                height: 70
                keyname: "о"
            }

            KeyButton {
                id: keyButton18
                x: 539
                y: 86
                width: 70
                height: 70
                keyname: "л"
            }

            KeyButton {
                id: keyButton19
                x: 615
                y: 86
                width: 70
                height: 70
                keyname: "д"
            }

            KeyButton {
                id: keyButton20
                x: 691
                y: 86
                width: 70
                height: 70
                keyname: "ж"
            }

            KeyButton {
                id: keyButton21
                x: 767
                y: 86
                width: 70
                height: 70
                keyname: "э"
            }

            KeyButton {
                id: keyButton22
                x: 29
                y: 162
                width: 70
                height: 70
                keyname: "я"
            }

            KeyButton {
                id: keyButton23
                x: 105
                y: 162
                width: 70
                height: 70
                keyname: "ч"
            }

            KeyButton {
                id: keyButton24
                x: 181
                y: 162
                width: 70
                height: 70
                text: "0"
                keyname: "с"
            }

            KeyButton {
                id: keyButton25
                x: 257
                y: 162
                width: 70
                height: 70
                keyname: "м"
            }

            KeyButton {
                id: keyButton26
                x: 333
                y: 162
                width: 70
                height: 70
                keyname: "и"
            }

            KeyButton {
                id: keyButton27
                x: 409
                y: 162
                width: 70
                height: 70
                keyname: "т"
            }

            KeyButton {
                id: keyButton28
                x: 485
                y: 162
                width: 70
                height: 70
                keyname: "ь"
            }

            KeyButton {
                id: keyButton29
                x: 561
                y: 162
                width: 70
                height: 70
                keyname: "б"
            }

            KeyButton {
                id: keyButton30
                x: 637
                y: 162
                width: 70
                height: 70
                keyname: "ю"
            }

            KeyButton {
                id: keyButton31
                x: 159
                y: 238
                width: 70
                height: 70
                keyname: ","
            }

            KeyButton {
                id: keyButton32
                x: 615
                y: 238
                width: 70
                height: 70
                keyname: "."
            }

            KeyButton {
                id: keyButton33
                x: 235
                y: 238
                width: 374
                height: 70
                keyname: " "
            }

            KeyButton {
                id: keyButton34
                x: 713
                y: 162
                width: 104
                height: 70
                text: "<"
            }

            Item {

                id: digitsButton
                x: 7
                y: 238
                width: 146
                height: 70

                MouseArea {
                    id: btnHaracter
                    anchors.fill: parent

                    onClicked: {
                        abcRectangle.visible = false
                        intRectangle.visible = true
                    }
                }

                Rectangle {
                    id: rectangle15
                    x: 0
                    y: 0
                    width: digitsButton.width
                    height: digitsButton.height
                    color: btnHaracter.pressed ? "#abbdcb" : "#ffffff"
                    radius: 3

                    Label {
                        id: label26
                        color: "#143656"
                        text: "123"
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 0
                        font.pointSize: 18
                        font.bold: true
                    }
                }
            }

            Item {

                id: removeLater1
                x: 691
                y: 238
                width: 146
                height: 70

                MouseArea {
                    id: remove1LaterAction
                    anchors.fill: parent
                    anchors.rightMargin: 42

                    onClicked: {
                        activeFocusItem.text = activeFocusItem.text.slice(0, -1)
                    }
                }

                Rectangle {
                    id: rectangle1521
                    x: 0
                    y: 0
                    width: textButton.width
                    height: textButton.height
                    color: textAction.pressed ? "#abbdcb" : "#ffffff"
                    radius: 3

                    Label {
                        id: label2621
                        color: "#143656"
                        text: "<"
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 18
                        font.bold: true
                    }
                }
            }

            //            KeyButton {
            //                id: keyButton36
            //                x: 691
            //                y: 238
            //                width: 146
            //                height: 70
            //                text: "Готово"
            //            }
        }

        Rectangle {
            id: intRectangle
            width: 350
            height: 319
            color: "#00000000"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            visible: false

            KeyButton {
                id: keyButton44
                x: 8
                y: 8
                width: 70
                height: 70
                keyname: "7"
            }

            KeyButton {
                id: keyButton37
                x: 8
                y: 236
                width: 146
                height: 70
                keyname: "0"
            }

            KeyButton {
                id: keyButton45
                x: 84
                y: 8
                width: 70
                height: 70
                keyname: "8"
            }

            KeyButton {
                id: keyButton38
                x: 8
                y: 160
                width: 70
                height: 70
                keyname: "1"
            }

            KeyButton {
                id: keyButton46
                x: 160
                y: 8
                width: 70
                height: 70
                keyname: "9"
            }

            KeyButton {
                id: keyButton39
                x: 84
                y: 160
                width: 70
                height: 70
                keyname: "2"
            }

            KeyButton {
                id: keyButton47
                x: 160
                y: 236
                width: 70
                height: 70
                keyname: "."
            }

            KeyButton {
                id: keyButton40
                x: 160
                y: 160
                width: 70
                height: 70
                keyname: "3"
            }

            Item {

                id: removeLater
                x: 236
                y: 8
                width: 104
                height: 70

                MouseArea {
                    id: removeLaterAction
                    anchors.fill: parent

                    onClicked: {
                        activeFocusItem.text = activeFocusItem.text.slice(0, -1)
                    }
                }

                Rectangle {
                    id: rectangle152
                    x: 0
                    y: 0
                    width: textButton.width
                    height: textButton.height
                    color: textAction.pressed ? "#abbdcb" : "#ffffff"
                    radius: 3

                    Label {
                        id: label262
                        color: "#143656"
                        text: "<"
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 18
                        font.bold: true
                    }
                }
            }

            KeyButton {
                id: keyButton41
                x: 8
                y: 84
                width: 70
                height: 70
                keyname: "4"
            }

            Item {

                id: textButton
                x: 236
                y: 84
                width: 104
                height: 70

                MouseArea {
                    id: textAction
                    anchors.fill: parent

                    onClicked: {
                        abcRectangle.visible = true
                        intRectangle.visible = false
                    }
                }

                Rectangle {
                    id: rectangle1522
                    x: 0
                    y: 0
                    width: textButton.width
                    height: textButton.height
                    color: textAction.pressed ? "#abbdcb" : "#ffffff"
                    radius: 3

                    Label {
                        id: label2622
                        color: "#143656"
                        text: "ABC"
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 18
                        font.bold: true
                    }
                }
            }

            KeyButton {
                id: keyButton42
                x: 84
                y: 84
                width: 70
                height: 70
                keyname: "5"
            }

            KeyButton {
                id: keyButton50
                x: 236
                y: 160
                width: 104
                height: 146
                text: "Готово"
            }
            KeyButton {
                id: keyButton43
                x: 160
                y: 84
                width: 70
                height: 70
                keyname: "6"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:400;width:1280}
}
##^##*/

