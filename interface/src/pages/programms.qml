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
            x: 38
            y: 91
            width: 1205
            height: 774
            ScrollBar.horizontal.interactive: false
            ScrollBar.vertical.interactive: true

            ListView {
                id: showWeldingProgramm
                x: 0
                y: 8
                width: 1272
                height: 510
                focus: true
                model: ListModel {
                    id: listProgramms
                }
                delegate: Row {
                    id: row1
                    x: 8
                    y: 62
                    width: 1100
                    height: 60

                    Rectangle {
                        id: rectangle1
                        x: 38
                        y: 26
                        width: 1147
                        height: 70
                        color: "#15000000"
                        radius: 5

                        Button {
                            id: button
                            x: 951
                            y: 4
                            width: 188
                            height: 60
                            text: qsTr("Удалить")
                            highlighted: true
                            Material.background: Material.Red
                            onClicked: {
                                console.log(id)
                            }
                        }

                        Button {
                            id: button1
                            x: 762
                            y: 4
                            width: 183
                            height: 60
                            text: "Редактировать"
                            highlighted: true
                            Material.background: Material.Green
                            onClicked: {
                                console.log(id)
                            }
                        }

                        Label {
                            id: label
                            x: 7
                            y: 5
                            width: 460
                            height: 60
                            color: "#ffffff"
                            text: name
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                        }

                        Label {
                            id: label1
                            x: 473
                            y: 4
                            width: 120
                            height: 60
                            color: "#ffffff"
                            text: max_diameter
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                        }

                        Label {
                            id: label2
                            x: 600
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
                            x: 636
                            y: 4
                            width: 120
                            height: 60
                            color: "#ffffff"
                            text: qsTr(min_diameter + " (мм)")
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                        }
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
    D{i:0;autoSize:true;formeditorZoom:0.66;height:1024;width:1280}
}
##^##*/

