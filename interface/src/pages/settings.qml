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
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:1024;width:1280}
}
##^##*/

