import QtQuick 2.15
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Extras 1.4

Item {
    id: indexPage

    property bool truePass: false

    function verifyPassword(password) {
        console.log(password)
        if (password === "123456") {
            indexPage.truePass = true
            testDialog.close()
        } else {
            console.log("NOVALID PASSWORD")
        }
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        anchors.fill: parent
        color: "#004f90"

        Dialog {
            id: testDialog
            title: "Введите пароль"
            standardButtons: Dialog.Cancel
            //// CRUNCH
            //            anchors.centerIn: parent
            x: 340
            y: 100
            implicitWidth: 600
            implicitHeight: 400
            modal: true

            header: {
                color: "#000000"
            }

            contentItem: Rectangle {
                id: rectangle8
                x: 432
                y: 438
                width: 600
                height: 400
                color: "#ffffff"

                TextField {
                    id: textField
                    x: 8
                    y: 180
                    width: 402
                    height: 40
                    placeholderText: qsTr("Введите пароль")
                }

                Button {
                    id: button2
                    x: 416
                    y: 180
                    width: 150
                    height: 60
                    text: "Ввести"
                    onClicked: verifyPassword(textField.text)
                }
            }
        }

        Rectangle {
            id: rectangle1
            x: 0
            y: 412
            width: 340
            radius: 5
            color: "#50000000"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: rectangle3.top
            anchors.bottomMargin: 6
            anchors.topMargin: 8
            anchors.leftMargin: 8

            Label {
                id: label2
                x: 8
                y: 8
                width: 332
                height: 35
                color: "#ffffff"
                text: "Управление"
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Light"
                font.pointSize: 14
            }

            Button {
                x: 8
                y: 49
                width: 324
                height: 80
                text: qsTr("Визуализация")
                font.pointSize: 14
                highlighted: true
                Material.background: Material.Blue
                onClicked: {
                    stackView.push(Qt.resolvedUrl("action.qml"))
                }
            }

            Button {
                x: 8
                y: 135
                width: 324
                height: 80
                text: qsTr("График")
                font.pointSize: 14
                Material.background: Material.Blue
                highlighted: true
                onClicked: {
                    stackView.push(Qt.resolvedUrl("charts.qml"))
                }
            }

            Button {
                x: 8
                y: 221
                width: 324
                height: 80
                text: qsTr("Кнопка")
                font.pointSize: 14
                Material.background: Material.Blue
                highlighted: true
                onClicked: {
                    stackView.push(Qt.resolvedUrl("charts.qml"))
                }
            }

            Button {
                x: 8
                y: 701
                width: 324
                height: 80
                text: qsTr("Выход")
                font.pointSize: 14
                Material.background: Material.Blue
                highlighted: true
                onClicked: {
                    handler.close_application()
                }
            }
        }

        Rectangle {
            id: rectangle2
            x: 362
            y: 8
            width: 910
            radius: 5
            height: 1008
            color: "#50000000"
            anchors.left: rectangle1.right
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.rightMargin: 8
            anchors.topMargin: 8
            anchors.leftMargin: 6

            Label {
                id: label
                x: 829
                width: 73
                height: 37
                color: "#ffffff"
                text: qsTr("21:56:32")
                anchors.right: parent.right
                anchors.top: parent.top
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 8
                anchors.rightMargin: 8
                font.bold: true
                font.pointSize: 8
            }

            //            Rectangle {
            //                id: rectangle4
            //                x: 8
            //                y: 51
            //                width: 902
            //                height: 647
            //                color: "#23ffffff"
            Rectangle {
                id: rectangle7
                x: 8
                y: 51
                width: 902
                height: 731
                color: "#1bffffff"
                radius: 5
            }

            //            }
            Material.accent: Material.Blue
            ScrollView {
                id: scrollView
                x: 8
                y: 127
                width: 902
                height: 579
                ScrollBar.horizontal.interactive: false
                ScrollBar.vertical.interactive: true

                ListView {
                    id: showWeldingProgramm
                    focus: true
                    model: ListModel {
                        id: listProgramms
                    }
                    delegate: Rectangle {
                        id: rectangle5
                        x: 8
                        y: 8
                        width: 850
                        height: 70
                        color: "#40000000"
                        radius: 3
                        border.color: "#60000000"

                        Button {
                            id: button
                            x: 603
                            y: 5
                            width: 238
                            height: 60
                            text: qsTr("Выбрать")
                            font.pointSize: 14
                            Material.background: Material.Cyan
                            highlighted: true
                        }

                        Label {
                            id: label3
                            x: 8
                            y: 5
                            width: 292
                            height: 60
                            color: "#ffffff"
                            text: name
                            verticalAlignment: Text.AlignVCenter
                            font.pointSize: 14
                        }

                        Label {
                            id: label41
                            x: 304
                            y: 5
                            width: 95
                            height: 60
                            color: "#ffffff"
                            text: min_diameter
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                            font.pointSize: 14
                        }

                        Label {
                            id: label51
                            x: 405
                            y: 5
                            width: 20
                            height: 60
                            color: "#ffffff"
                            text: "-"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pointSize: 14
                        }

                        Label {
                            id: label6
                            x: 431
                            y: 5
                            width: 95
                            height: 60
                            color: "#ffffff"
                            text: max_diameter
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            font.pointSize: 14
                        }

                        Label {
                            id: label7
                            x: 532
                            y: 5
                            width: 65
                            height: 60
                            color: "#ffffff"
                            text: "(мм)"
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            font.pointSize: 14
                        }
                    }
                }
            }
            Rectangle {
                id: rectangle4
                x: 8
                y: 51
                width: 902
                height: 70
                color: "#1d4977"
                radius: 5

                Label {
                    id: label5
                    x: 0
                    y: 5
                    width: 259
                    height: 60
                    color: "#ffffff"
                    text: qsTr("Название программы")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.styleName: "Light"
                }

                Label {
                    id: label9
                    x: 265
                    y: 5
                    width: 272
                    height: 60
                    color: "#ffffff"
                    text: qsTr("Допустимые диаметры")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.styleName: "Light"
                }

                TextField {
                    id: textField1
                    x: 543
                    y: 5
                    width: 174
                    height: 60
                    color: "#ffffff"
                    horizontalAlignment: Text.AlignHCenter
                    placeholderTextColor: "#81ffffff"
                    placeholderText: qsTr("Диаметр")
                }

                Button {
                    id: button1
                    x: 734
                    y: 5
                    width: 160
                    height: 60
                    text: "Найти"
                    highlighted: true
                    Material.background: Material.Teal
                }
            }
            Rectangle {
                id: rectangle6
                x: 8
                y: 712
                width: 902
                height: 70
                color: "#1d4977"
                radius: 5
            }

            Label {
                id: label4
                x: 8
                y: 14
                width: 409
                height: 31
                color: "#ffffff"
                text: qsTr("Программы сварки")
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.Light
                font.pointSize: 14
            }

            Rectangle {
                id: rectangle9
                x: 8
                y: 794
                width: 902
                height: 206
                radius: 5
                color: "#1bffffff"

                Label {
                    id: label8
                    x: 8
                    y: 8
                    width: 143
                    height: 26
                    color: "#ffffff"
                    text: "Выбрана програма:"
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label10
                    x: 157
                    y: 8
                    width: 521
                    height: 26
                    color: "#ffffff"
                    text: "Название программы"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label11
                    x: 684
                    y: 8
                    width: 210
                    height: 26
                    color: "#ffffff"
                    text: qsTr("10 - 20 мм")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                TextArea {
                    id: textArea
                    x: 8
                    y: 71
                    width: 670
                    height: 127
                    color: "#ffffff"
                    placeholderTextColor: "#d1ffffff"
                    placeholderText: qsTr("Нет описания")
                }

                Label {
                    id: label12
                    x: 8
                    y: 40
                    width: 670
                    height: 25
                    color: "#ffffff"
                    text: "Описание:"
                }
            }
        }

        Rectangle {
            id: rectangle3
            x: 8
            y: 803
            width: 340
            height: 213
            radius: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            color: "#50000000"

            Label {
                id: label1
                x: 8
                y: 6
                width: 324
                height: 30
                color: "#ffffff"
                text: "Настройки"
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Button {
                x: 8
                y: 39
                width: 324
                height: 80
                text: qsTr("Программы сварки")
                font.pointSize: 14
                Material.background: Material.Blue
                highlighted: true
                onClicked: {
                    if (indexPage.truePass) {
                        stackView.push(Qt.resolvedUrl("programms.qml"))
                    } else {
                        testDialog.open()
                    }
                }
            }

            Button {
                x: 8
                y: 125
                width: 324
                height: 80
                text: "Общие настройки"
                font.pointSize: 14
                Material.background: Material.Blue
                highlighted: true
                onClicked: {
                    if (indexPage.truePass) {
                        stackView.push(Qt.resolvedUrl("settings.qml"))
                    } else {
                        testDialog.open()
                    }
                }
            }
        }

        Image {
            id: image
            x: 1036
            y: 960
            width: 219
            height: 37
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            source: "./cnt/logo.png"
            anchors.rightMargin: 25
            anchors.bottomMargin: 27
            fillMode: Image.PreserveAspectFit
        }
    }

    Component.onCompleted: handler.get_welding_programm()

    Connections {
        target: handler

        function onWeldingProgramms(wb) {
            listProgramms.append(wb)
            //            if (wb.lenght) {

            //            } else {
            //                notProgrammLabel.visible = true
            //            }
        }
    }

    //    Component.onCompleted: {
    //        handler.running_application()
    //    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.1;height:1024;width:1280}
}
##^##*/

