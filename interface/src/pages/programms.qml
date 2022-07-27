import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Item {
    id: item1
    Rectangle {
        id: rectangle
        color: "#004f90"
        anchors.fill: parent

        ScrollView {
            id: scrollView
            x: 8
            y: 386
            width: 1272
            height: 518
            ScrollBar.horizontal.interactive: false
            ScrollBar.vertical.interactive: true

            ListView {
                id: showWeldingProgramm
                x: 8
                y: 450
                width: 1264
                height: 524
                focus: true
                model: ListModel {
                    id: listProgramms
                }
                delegate: Row {
                    id: row1
                    x: 8
                    y: 62
                    width: 784
                    height: 60

                    Button {
                        width: 120
                        height: 50
                        text: qsTr("Выбрать")
                        Material.background: Material.Blue
                        font.pointSize: 12
                        highlighted: true
                        onClicked: {
                            console.log(id)
                            //                            bottomRect.running = !bottomRect.running
                            //                            stackView.push(Qt.resolvedUrl("action.qml"))
                        }
                    }

                    Label {
                        id: label4
                        text: name
                        color: "#ffffff"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 14
                        width: 424
                        height: 40
                    }

                    Label {
                        id: label5
                        text: max_diameter + " - " + min_diameter + ", mm"
                        color: "#ffffff"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 14
                        width: 240
                        height: 40
                    }
                }
            }
        }

        Button {
            x: 948
            y: 936
            width: 324
            height: 80
            text: qsTr("Выход")
            font.pointSize: 14
            Material.background: Material.Blue
            highlighted: true
            onClicked: {
                stackView.push(Qt.resolvedUrl("index.qml"))
            }
        }

        Button {
            x: 618
            y: 936
            width: 324
            height: 80
            text: qsTr("Создать программу")
            font.pointSize: 14
            Material.background: Material.Blue
            highlighted: true
            onClicked: {
                stackView.push(Qt.resolvedUrl("programm.qml"))
            }
        }

        Rectangle {
            id: rectangle1
            x: 8
            y: 8
            width: 1264
            height: 70
            color: "#15000000"
            radius: 5

            Button {
                id: button
                x: 1068
                y: 4
                width: 188
                height: 60
                text: qsTr("Удалить")
                highlighted: true
                Material.background: Material.Red
            }

            Button {
                id: button1
                x: 879
                y: 4
                width: 183
                height: 60
                text: "Редактировать"
                rotation: 0
                highlighted: true
                Material.background: Material.Green
            }

            Label {
                id: label
                x: 12
                y: 4
                width: 533
                height: 60
                color: "#ffffff"
                text: qsTr("Label")
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label1
                x: 551
                y: 4
                width: 140
                height: 60
                color: "#ffffff"
                text: qsTr("Label")
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label2
                x: 697
                y: 4
                width: 30
                height: 60
                color: "#ffffff"
                text: qsTr("-")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label3
                x: 733
                y: 4
                width: 140
                height: 60
                color: "#ffffff"
                text: qsTr("Label")
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
            }
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
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:3;height:1024;width:1280}
}
##^##*/

