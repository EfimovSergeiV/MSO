import QtQuick 2.0
import QtQuick.Controls 2.15

Button {
    id: button
    text: "StepperBtn"
    font.bold: true

    contentItem: Text {
        text: button.text
        font: button.font

        opacity: enabled ? 1.0 : 0.3
        color: button.down ? "#ffffff" : "#133656"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 200
        implicitHeight: 50
        color: button.down ? "#023f6e" : "#ffffff"
        border.color: button.down ? "green" : "silver"
        border.width: 1
        radius: 3
        //        layer.enabled: control.enabled && control.MyStyle.elevation > 0
    }
}
