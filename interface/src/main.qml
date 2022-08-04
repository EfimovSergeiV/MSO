import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: mainWindow

    width: 1280
    height: 1024
    visible: true
    title: qsTr("MSO")

    StackView {
        id: stackView
        x: 0
        y: 0
        width: mainWindow.width
        height: mainWindow.height
        initialItem: Qt.resolvedUrl("pages/action.qml")
        pushEnter: Transition {
            PropertyAnimation {
                property: "scale" /// "opacity"
                from: 0
                to: 1
                duration: 10 //200
            }
        }
        pushExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to: 0
                duration: 10 //200
            }
        }
        popEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to: 0
                duration: 10 //200
            }
        }
        popExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to: 1
                duration: 10 //200
            }
        }
    }

    //  For production
    Component.onCompleted: {

        //    mainWindow.showFullScreen()
    }
    Connections {
        target: handler

        function onCloseApplication() {
            Qt.quit()
        }
    }
    //    Component.onDestruction: handler.first_worker_stop()
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/

