import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Extras 1.4

import QtQuick.VirtualKeyboard 2.15
import QtQuick.VirtualKeyboard.Styles 2.15
import QtQuick.VirtualKeyboard.Settings 2.15
import "./sections/"

Item {
    id: item1

    property var selectRect: programmSec
    property int progId: 0

    function changeRectangle(rectangle) {

        selectRect.visible = false
        rectangle.visible = true
        selectRect = rectangle
    }

    property var programm: [{
            "programm_programmmodel": programmSec.datastruct,
            "programm_correctorsectionmodel": correctorSec.datastruct,
            "programm_reflowsectionmodel": reflowSec.datastruct,
            "programm_preheatingmodel": preheatingSec.datastruct,
            "programm_otherparametersensormodel": otherSec.datastruct,
            "programm_burningmodel": burningSec.datastruct,
            "programm_clampmodel": burningSec.datastructcl,
            "programm_sedimentpressuresensormodel": sensorSec.sedimentpressuresensormodel,
            "programm_primaryvoltagesensormodel": sensorSec.primaryvoltagesensormodel,
            "programm_positionsensormodel": sensorSec.positionsensormodel,
            "programm_pkpressuremetersensormodel": sensorSec.pkpressuremetersensormodel,
            "programm_oiltemperaturesensormodel": sensorSec.oiltemperaturesensormodel,
            "programm_nkpressuremetersensormodel": sensorSec.nkpressuremetersensormodel,
            "programm_hydraulicpressuresensormodel": sensorSec.hydraulicpressuresensormodel,
            "programm_currentsensormodel": sensorSec.currentsensormodel
        }]

    Rectangle {
        id: windowRectangle
        color: "#004f90"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        ProgrammSection {
            id: programmSec
            x: 8
            y: 8
            visible: true
        }

        BurningSection {
            id: burningSec
            x: 8
            y: 8
            visible: false
        }

        CorrectorSection {
            id: correctorSec
            x: 8
            y: 8
            visible: false
        }

        SensorSection {
            id: sensorSec
            x: 8
            y: 8
            visible: false
        }

        ReflowSection {
            id: reflowSec
            x: 8
            y: 8
            visible: false
        }

        PreheatingSection {
            id: preheatingSec
            x: 8
            y: 8
            visible: false
        }

        OtherSection {
            id: otherSec
            x: 8
            y: 8
            visible: false
        }

        Button {
            x: 8
            y: 520
            width: 200
            height: 60
            text: "Программа"
            font.pointSize: 14
            Material.background: Material.Blue
            highlighted: true
            onClicked: {
                changeRectangle(programmSec)
            }
        }

        Button {
            x: 231
            y: 520
            width: 200
            height: 60
            text: qsTr("Корректор")
            Material.background: Material.Blue
            font.pointSize: 14
            highlighted: true
            onClicked: {
                changeRectangle(correctorSec)
            }
        }

        Button {
            x: 452
            y: 520
            width: 200
            height: 60
            text: qsTr("Оплавление")
            Material.background: Material.Blue
            font.pointSize: 14
            highlighted: true
            onClicked: {
                changeRectangle(reflowSec)
            }
        }

        Button {
            x: 671
            y: 520
            width: 200
            height: 60
            text: qsTr("Подогрев")
            Material.background: Material.Blue
            font.pointSize: 14
            highlighted: true
            onClicked: {
                changeRectangle(preheatingSec)
            }
        }

        Button {
            x: 561
            y: 586
            width: 310
            height: 60
            text: qsTr("Параметры цикла сварки")
            Material.background: Material.Blue
            font.pointSize: 14
            highlighted: true
            onClicked: {
                changeRectangle(otherSec)
            }
        }

        Button {
            x: 1072
            y: 520
            width: 200
            height: 60
            text: qsTr("Выйти")
            Material.background: Material.Blue
            font.pointSize: 14
            highlighted: true
            onClicked: {
                stackView.push(Qt.resolvedUrl("programms.qml"))
            }
        }

        Button {
            x: 8
            y: 586
            width: 200
            height: 60
            text: qsTr("Выжигание")
            Material.background: Material.Blue
            font.pointSize: 14
            highlighted: true
            onClicked: {
                changeRectangle(burningSec)
            }
        }

        Button {
            x: 231
            y: 586
            width: 310
            height: 60
            text: qsTr("Настройка датчиков")
            Material.background: Material.Blue
            font.pointSize: 14
            highlighted: true
            onClicked: {
                changeRectangle(sensorSec)
            }
        }

        Button {
            x: 1072
            y: 586
            width: 200
            height: 60
            text: qsTr("Сохранить")
            Material.background: Material.Blue
            font.pointSize: 14
            highlighted: true
            onClicked: {
                handler.save_programm(item1.programm)
            }
        }
    }
    Connections {
        target: handler

        function onProgrammCreatedId(id) {
            item1.progId = id
        }
    }

    //    InputPanel {
    //        id: keyboardPanel
    //        visible: true
    //        anchors.horizontalCenter: parent.horizontalCenter
    //        anchors.bottom: parent.bottom
    //        width: 1280
    //        Component.onCompleted: {
    //            keyboard.style.keyboardBackground = null
    //            keyboard.style.selectionListBackground = null
    //        }
    //    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:1024;width:1280}
}
##^##*/

