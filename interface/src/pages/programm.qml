import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Extras 1.4

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

        Rectangle {
            id: rectangle1
            x: 8
            y: 8
            width: 1264
            height: 504
            color: "#80000000"
            radius: 5

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

            Row {
                id: row1
                x: 8
                y: 130
                width: 1248
                height: 50
                spacing: 5

                TextField {
                    id: textField
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField1
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField2
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField3
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField4
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField5
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField6
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField7
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField8
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField9
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
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
                id: row2
                x: 8
                y: 230
                width: 1248
                height: 50
                spacing: 5
                TextField {
                    id: textField10
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField11
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField12
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField13
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField14
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField15
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField16
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField17
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField18
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField19
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
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
                id: row3
                x: 8
                y: 330
                width: 1248
                height: 50
                spacing: 5
                TextField {
                    id: textField20
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField21
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField22
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField23
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField24
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField25
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField26
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField27
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField28
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField29
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
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
                id: row4
                x: 8
                y: 439
                width: 1248
                height: 50
                spacing: 5
                TextField {
                    id: textField30
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField31
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField32
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField33
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField34
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField35
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField36
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField37
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField38
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField39
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
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

        Rectangle {
            id: rectangle2
            x: 8
            y: 677
            width: 690
            height: 339
            color: "#7e000000"
            radius: 5

            TextArea {
                id: textArea
                x: 8
                y: 54
                width: 674
                height: 277
                color: "#ffffff"
                placeholderText: qsTr("Описание/комментарий к сварочной программе")
            }

            TextField {
                id: textField42
                x: 8
                y: 8
                width: 674
                height: 40
                placeholderText: qsTr("Название программы")
            }
        }

        Rectangle {
            id: rectangle3
            x: 704
            y: 677
            width: 568
            height: 85
            color: "#7f000000"
            radius: 5

            Label {
                id: label17
                x: 7
                y: 8
                width: 553
                height: 23
                color: "#ffffff"
                text: "Допустимые диаметры"
            }
            TextField {
                id: textField40
                x: 7
                y: 37
                width: 250
                height: 40
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("0")
                inputMethodHints: Qt.ImhDigitsOnly
            }

            Label {
                id: label16
                x: 263
                y: 44
                width: 43
                height: 33
                color: "#ffffff"
                text: qsTr("-")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
            }

            TextField {
                id: textField41
                x: 312
                y: 37
                width: 247
                height: 40
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("0")
                inputMethodHints: Qt.ImhDigitsOnly
            }
        }

        Rectangle {
            id: rectangle4
            x: 704
            y: 918
            width: 568
            height: 98
            color: "#7e000000"
            radius: 5

            Button {
                id: button
                x: 313
                y: 51
                width: 247
                height: 40
                text: qsTr("Выход")
                onClicked: {
                    stackView.push(Qt.resolvedUrl("programms.qml"))
                }
            }

            Button {
                id: button1
                x: 6
                y: 51
                width: 301
                height: 40
                text: "Сохранить"
            }

            Button {
                id: button2
                x: 6
                y: 5
                width: 125
                height: 40
                text: qsTr("Корректор")
            }

            Button {
                id: button3
                x: 135
                y: 5
                width: 209
                height: 40
                text: qsTr("Подогрев/Выжигание")
            }

            Button {
                id: button4
                x: 350
                y: 5
                width: 210
                height: 40
                text: qsTr("Параметры цикла сварки")
            }
        }

        Rectangle {
            id: rectangle5
            x: 8
            y: 408
            width: 1264
            height: 504
            color: "#80000000"
            radius: 5
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
                y: 130
                width: 1248
                height: 50
                spacing: 5
                TextField {
                    id: textField43
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField44
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField45
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField46
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField47
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField48
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField49
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField50
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField51
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField52
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }
            }

            Label {
                id: label28
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
                id: row7
                x: 8
                y: 230
                width: 1248
                height: 50
                spacing: 5
                TextField {
                    id: textField53
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField54
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField55
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField56
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField57
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField58
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField59
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField60
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField61
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField62
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }
            }

            Label {
                id: label29
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
                id: row8
                x: 8
                y: 330
                width: 1248
                height: 50
                spacing: 5
                TextField {
                    id: textField63
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField64
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField65
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField66
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField67
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField68
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField69
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField70
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField71
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField72
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }
            }

            Label {
                id: label30
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
                id: row9
                x: 8
                y: 439
                width: 1248
                height: 50
                spacing: 5
                TextField {
                    id: textField73
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField74
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField75
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField76
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField77
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField78
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField79
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField80
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField81
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }

                TextField {
                    id: textField82
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                }
            }

            Label {
                id: label31
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
                id: label32
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
                id: label33
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
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:1024;width:1280}D{i:78}
}
##^##*/

