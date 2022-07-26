import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Extras 1.4

import QtQuick.VirtualKeyboard 2.15
import QtQuick.VirtualKeyboard.Styles 2.15
import QtQuick.VirtualKeyboard.Settings 2.15

//import "../controls/keyboard"
import "../controls/"
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

    property var programm1: [{
            "programm_programmmodel": {
                "id": item1.progId,
                "name": programmSec.programmName.text,
                "description": programmSec.programmDescription.text,
                "max_diameter": programmSec.maxDiameter.text,
                "min_diameter": programmSec.minDiameter.text
            }
        }]

    property var programm: [{
            "programm_programmmodel": {
                "id": item1.progId,
                "name": programmSec.programmName.text,
                "description": programmSec.programmDescription.text,
                "max_diameter": programmSec.maxDiameter.text,
                "min_diameter": programmSec.minDiameter.text
            },
            "programm_correctorsectionmodel": [{
                    "c_0": sec0c0.text,
                    "c_1": sec0c1.text,
                    "c_2": sec0c2.text,
                    "c_3": sec0c3.text,
                    "section": 0
                }, {
                    "c_0": sec1c0.text,
                    "c_1": sec1c1.text,
                    "c_2": sec1c2.text,
                    "c_3": sec1c3.text,
                    "section": 1
                }, {
                    "c_0": sec2c0.text,
                    "c_1": sec2c1.text,
                    "c_2": sec2c2.text,
                    "c_3": sec2c3.text,
                    "section": 2
                }, {
                    "c_1": sec3c1.text,
                    "c_2": sec3c2.text,
                    "c_3": sec3c3.text,
                    "c_0": sec3c0.text,
                    "section": 3
                }, {
                    "c_0": sec4c0.text,
                    "c_1": sec4c1.text,
                    "c_2": sec4c2.text,
                    "c_3": sec4c3.text,
                    "section": 4
                }, {
                    "c_0": sec5c0.text,
                    "c_1": sec5c1.text,
                    "c_2": sec5c2.text,
                    "c_3": sec5c3.text,
                    "section": 5
                }, {
                    "c_0": sec6c0.text,
                    "c_1": sec6c1.text,
                    "c_2": sec6c2.text,
                    "c_3": sec6c3.text,
                    "section": 6
                }, {
                    "c_0": sec7c0.text,
                    "c_1": sec7c1.text,
                    "c_2": sec7c2.text,
                    "c_3": sec7c3.text,
                    "section": 7
                }, {
                    "c_0": sec8c0.text,
                    "c_1": sec8c1.text,
                    "c_2": sec8c2.text,
                    "c_3": sec8c3.text,
                    "section": 8
                }, {
                    "c_0": sec9c0.text,
                    "c_1": sec9c1.text,
                    "c_2": sec9c2.text,
                    "c_3": sec9c3.text,
                    "section": 9
                }],
            "programm_reflowsectionmodel": [{
                    "r_0": sec0r0.text,
                    "r_1": sec0r1.text,
                    "r_2": sec0r2.text,
                    "r_3": sec0r3.text,
                    "section": 0
                }, {
                    "r_0": sec1r0.text,
                    "r_1": sec1r1.text,
                    "r_2": sec1r2.text,
                    "r_3": sec1r3.text,
                    "section": 1
                }, {
                    "r_0": sec2r0.text,
                    "r_1": sec2r1.text,
                    "r_2": sec2r2.text,
                    "r_3": sec2r3.text,
                    "section": 2
                }, {
                    "r_1": sec3r1.text,
                    "r_2": sec3r2.text,
                    "r_3": sec3r3.text,
                    "r_0": sec3r0.text,
                    "section": 3
                }, {
                    "r_0": sec4r0.text,
                    "r_1": sec4r1.text,
                    "r_2": sec4r2.text,
                    "r_3": sec4r3.text,
                    "section": 4
                }, {
                    "r_0": sec5r0.text,
                    "r_1": sec5r1.text,
                    "r_2": sec5r2.text,
                    "r_3": sec5r3.text,
                    "section": 5
                }, {
                    "r_0": sec6r0.text,
                    "r_1": sec6r1.text,
                    "r_2": sec6r2.text,
                    "r_3": sec6r3.text,
                    "section": 6
                }, {
                    "r_0": sec7r0.text,
                    "r_1": sec7r1.text,
                    "r_2": sec7r2.text,
                    "r_3": sec7r3.text,
                    "section": 7
                }, {
                    "r_0": sec8r0.text,
                    "r_1": sec8r1.text,
                    "r_2": sec8r2.text,
                    "r_3": sec8r3.text,
                    "section": 8
                }, {
                    "r_0": sec9r0.text,
                    "r_1": sec9r1.text,
                    "r_2": sec9r2.text,
                    "r_3": sec9r3.text,
                    "section": 9
                }],
            "programm_preheatingmodel": {
                "ph_0": ph0.text,
                "ph_1": ph1.text,
                "ph_2": ph2.text,
                "ph_3": ph3.text,
                "ph_4": ph4.text,
                "ph_5": ph5.text,
                "ph_6": ph6.text,
                "ph_7": ph7.text,
                "ph_8": ph8.text,
                "ph_9": ph9.text,
                "ph_10": ph10.text,
                "ph_11": ph11.text,
                "ph_12": ph12.text
            },
            "programm_otherparametersensormodel": {
                "oth_0": oth0.text,
                "oth_1": oth1.text,
                "oth_2": oth2.text,
                "oth_3": oth3.text,
                "oth_4": oth4.text,
                "oth_5": oth5.text,
                "oth_6": oth6.text,
                "oth_7": oth7.text,
                "oth_8": oth8.text,
                "oth_9": oth9.text,
                "oth_10": oth10.text,
                "oth_11": oth11.text,
                "oth_12": oth12.text,
                "oth_13": oth13.text,
                "oth_14": oth14.text,
                "oth_15": oth15.text,
                "oth_16": oth16.text,
                "oth_17": oth17.text
            },
            "programm_burningmodel": {
                "b_0": b0.text,
                "b_1": b1.text,
                "b_2": b2.text,
                "b_3": b3.text,
                "b_4": b4.text,
                "b_5": b5.text,
                "b_6": b6.text,
                "b_7": b7.text
            },
            "programm_clampmodel": {
                "cl_0": cl0.text,
                "cl_1": cl1.text,
                "cl_2": cl2.text,
                "cl_3": cl3.text,
                "cl_4": cl4.text,
                "cl_5": cl5.text,
                "cl_6": cl6.text
            },
            "programm_sedimentpressuresensormodel": {
                "min_value": minSedimentPressureSensor.text,
                "max_value": maxSedimentPressureSensor.text
            },
            "programm_primaryvoltagesensormodel": {
                "min_value": minPrimaryVoltageSensor.text,
                "max_value": maxPrimaryVoltageSensor.text
            },
            "programm_positionsensormodel": {
                "min_value": minPositionSensor.text,
                "max_value": maxPositionSensor.text
            },
            "programm_pkpressuremetersensormodel": {
                "min_value": minPKPressureMeterSensor.text,
                "max_value": maxPKPressureMeterSensor.text
            },
            "programm_oiltemperaturesensormodel": {
                "min_value": minOilTemperatureSensor.text,
                "max_value": maxOilTemperatureSensor.text
            },
            "programm_nkpressuremetersensormodel": {
                "min_value": minNKPressureMeterSensor.text,
                "max_value": maxNKPressureMeterSensor.text
            },
            "programm_hydraulicpressuresensormodel": {
                "min_value": minHydraulicPressureSensor.text,
                "max_value": maxHydraulicPressureSensor.text
            },
            "programm_currentsensormodel": {
                "min_value": minCurrentSensor.text,
                "max_value": maxCurrentSensor.text
            }
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
            text: qsTr("Параметры цикла свар")
            Material.background: Material.Blue
            font.pointSize: 14
            highlighted: true
            onClicked: {
                changeRectangle(programmSec)
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
                console.log(item1.programm1)
                //                handler.save_programm(item1.programm)
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
} //        InputPanel {//            //            //            //            //            //            //                 // the keyboard background//                 // the horizontal bar at the//            }//        }//        Component.onCompleted: console.log(Object.keys(keyboardPanel.keyboard.style).sort())//        qml: [alternateKeysListBackground,alternateKeysListBackgroundChanged,alternateKeysListBottomMargin,alternateKeysListBottomMarginChanged,alternateKeysListDelegate,alternateKeysListDelegateChanged,alternateKeysListHighlight,alternateKeysListHighlightChanged,alternateKeysListItemHeight,alternateKeysListItemHeightChanged,alternateKeysListItemWidth,alternateKeysListItemWidthChanged,alternateKeysListLeftMargin,alternateKeysListLeftMarginChanged,alternateKeysListRightMargin,alternateKeysListRightMarginChanged,alternateKeysListTopMargin,alternateKeysListTopMarginChanged,backspaceKeyPanel,backspaceKeyPanelChanged,characterPreviewDelegate,characterPreviewDelegateChanged,characterPreviewMargin,characterPreviewMarginChanged,compactSelectionList,compactSelectionListChanged,enterKeyPanel,enterKeyPanelChanged,fontFamily,fontFamilyChanged,fullScreenInputBackground,fullScreenInputBackgroundChanged,fullScreenInputColor,fullScreenInputColorChanged,fullScreenInputContainerBackground,fullScreenInputContainerBackgroundChanged,fullScreenInputCursor,fullScreenInputCursorChanged,fullScreenInputFont,fullScreenInputFontChanged,fullScreenInputMargins,fullScreenInputMarginsChanged,fullScreenInputPadding,fullScreenInputPaddingChanged,fullScreenInputPasswordCharacter,fullScreenInputPasswordCharacterChanged,fullScreenInputSelectedTextColor,fullScreenInputSelectedTextColorChanged,fullScreenInputSelectionColor,fullScreenInputSelectionColorChanged,handwritingKeyPanel,handwritingKeyPanelChanged,hideKeyPanel,hideKeyPanelChanged,inputLocale,inputLocaleChanged,inputLocaleIndicatorColor,inputLocaleIndicatorColorChanged,inputLocaleIndicatorHighlightTimer,inputLocaleIndicatorHighlightTimerChanged,keyBackgroundMargin,keyBackgroundMarginChanged,keyContentMargin,keyContentMarginChanged,keyIconScale,keyIconScaleChanged,keyPanel,keyPanelChanged,keyboardBackground,keyboardBackgroundChanged,keyboardDesignHeight,keyboardDesignHeightChanged,keyboardDesignWidth,keyboardDesignWidthChanged,keyboardHeight,keyboardHeightChanged,keyboardRelativeBottomMargin,keyboardRelativeBottomMarginChanged,keyboardRelativeLeftMargin,keyboardRelativeLeftMarginChanged,keyboardRelativeRightMargin,keyboardRelativeRightMarginChanged,keyboardRelativeTopMargin,keyboardRelativeTopMarginChanged,languageKeyPanel,languageKeyPanelChanged,languageListAdd,languageListAddChanged,languageListBackground,languageListBackgroundChanged,languageListDelegate,languageListDelegateChanged,languageListHighlight,languageListHighlightChanged,languageListRemove,languageListRemoveChanged,languagePopupListEnabled,languagePopupListEnabledChanged,modeKeyPanel,modeKeyPanelChanged,navigationHighlight,navigationHighlightChanged,objectName,objectNameChanged,popupListAdd,popupListAddChanged,popupListBackground,popupListBackgroundChanged,popupListDelegate,popupListDelegateChanged,popupListHighlight,popupListHighlightChanged,popupListRemove,popupListRemoveChanged,resourcePrefix,resourcePrefixChanged,scaleHint,scaleHintChanged,selectionHandle,selectionHandleChanged,selectionListAdd,selectionListAddChanged,selectionListBackground,selectionListBackgroundChanged,selectionListDelegate,selectionListDelegateChanged,selectionListHeight,selectionListHeightChanged,selectionListHighlight,selectionListHighlightChanged,selectionListRemove,selectionListRemoveChanged,shiftKeyPanel,shiftKeyPanelChanged,spaceKeyPanel,spaceKeyPanelChanged,symbolKeyPanel,symbolKeyPanelChanged,traceCanvasDelegate,traceCanvasDelegateChanged,traceInputKeyPanelDelegate,traceInputKeyPanelDelegateChanged]//        Keyboard {//            property bool showKeyboard: false//            NumberAnimation on y {//                to: 1400//                duration: 500//                running: !keyboard.showKeyboard//            }//            NumberAnimation on y {//                from: 1400//                to: 630//                duration: 500//                running: keyboard.showKeyboard//            }//            id: keyboard//            //            y: 1200 ///624//            //            width: 1280//            //            height: 400//            x: 0//            y: 1400//            width: 1280//            height: 400//            anchors.left: parent.left//            anchors.right: parent.right//            //            anchors.bottom: parent.bottom//            //            anchors.bottomMargin: 0//            anchors.rightMargin: 0//            anchors.leftMargin: 0//            show: true//        }

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:1024;width:1280}
}
##^##*/

