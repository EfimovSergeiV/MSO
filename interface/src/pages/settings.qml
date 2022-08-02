import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Item {
    id: item1
    Rectangle {
        id: rectangle
        color: "#004f90"
        anchors.fill: parent

        Button {
            x: 478
            y: 472
            width: 324
            height: 80
            text: qsTr("Выйти из настроек")
            font.pointSize: 14
            Material.background: Material.Blue
            highlighted: true
            onClicked: {
                stackView.push(Qt.resolvedUrl("index.qml"))
            }
        }

        Button {
            x: 825
            y: 372
            width: 324
            height: 80
            text: qsTr("Обновление программы")
            font.pointSize: 14
            highlighted: true
            Material.background: Material.Blue
        }

        Button {
            x: 116
            y: 372
            width: 324
            height: 80
            text: qsTr("Перейти в О.С.")
            font.pointSize: 14
            highlighted: true
            Material.background: Material.Blue
        }

        Button {
            x: 116
            y: 583
            width: 324
            height: 80
            text: qsTr("Прсмотреть лог файлы")
            font.pointSize: 14
            highlighted: true
            Material.background: Material.Blue
        }

        Button {
            x: 825
            y: 583
            width: 324
            height: 80
            text: qsTr("Запустить веб сервер")
            font.pointSize: 14
            highlighted: true
            Material.background: Material.Blue
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:1024;width:1280}D{i:3}D{i:4}D{i:5}
D{i:6}
}
##^##*/

