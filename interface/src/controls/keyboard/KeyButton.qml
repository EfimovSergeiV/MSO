import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    property string keyname: "0"
    property string text: "0"
    visible: true

    id: root
    width: 73
    height: 48

    MouseArea {
        id: btnHaracter
        anchors.fill: parent

        onClicked: {
            print(activeFocusItem, root.keyname)
            activeFocusItem.text = activeFocusItem.text + root.keyname
        }
    }

    Rectangle {
        id: rectangle15
        x: 0
        y: 0
        width: root.width
        height: root.height
        //        color: "#ffffff"
        color: btnHaracter.pressed ? "#abbdcb" : "#ffffff"

        Label {
            id: label26
            color: "#143656"

            text: root.keyname
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }
    }
} //Button {//    id: button
//    text: "A"
//    font.bold: true
//    font.pointSize: 20

//    property string keyname: "A"

//    onClicked: {
//        print(activeFocusItem, button.keyname)
//        activeFocusItem.text = activeFocusItem.text + button.keyname
//    }

//    contentItem: Text {
//        text: button.text
//        font: button.font
//        opacity: enabled ? 1.0 : 0.3
//        color: button.down ? "#ffffff" : "#133656"
//        horizontalAlignment: Text.AlignHCenter
//        verticalAlignment: Text.AlignVCenter
//        elide: Text.ElideRight
//    }

//    background: Rectangle {
//        implicitWidth: 100
//        implicitHeight: 60
//        color: button.down ? "#abbdcb" : "#ffffff"
//        border.color: "#004F90"
//        border.width: 1
//        radius: 3
//        //        layer.enabled: control.enabled && control.MyStyle.elevation > 0
//    }
//}


/*##^##
Designer {
    D{i:0;autoSize:true;height:70;width:70}
}
##^##*/

