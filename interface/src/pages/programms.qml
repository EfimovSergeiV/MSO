import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    id: item1
    Rectangle {
        id: rectangle
        color: "#133656"
        anchors.fill: parent

        Button {
            id: button
            x: 1025
            y: 976
            width: 247
            height: 40
            text: qsTr("Exit")
            onClicked: {
                stackView.push(Qt.resolvedUrl("index.qml"))
            }
        }

        Button {
            id: button1
            x: 753
            y: 976
            width: 266
            height: 40
            text: "Создать программу"
            onClicked: {
                stackView.push(Qt.resolvedUrl("programm.qml"))
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:1024;width:1280}D{i:1}
}
##^##*/

