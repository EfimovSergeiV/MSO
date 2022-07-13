import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Extras 1.4

import QtQuick.VirtualKeyboard 2.15
import QtQuick.VirtualKeyboard.Styles 2.15
import QtQuick.VirtualKeyboard.Settings 2.15

import "../controls/keyboard"
import "../controls/"

Item {
    id: item1

    property var selectRect: programmRectangle

    function changeRectangle(rectangle) {
        selectRect.hide = false
        rectangle.show = false
        selectRect.hide = true
        rectangle.show = true
        selectRect = rectangle
    }

    property var programm: [{
            "programm_programmmodel": {
                "name": programmName.text,
                "description": programmDescription.text,
                "max_diameter": maxDiameter.text,
                "min_diameter": minDiameter.text
            },
            "programm_correctorparammodel": [{
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
            "programm_reflowparammodel": [{
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
        color: "#133656"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        //////////// CORRECTOR PARAMS
        Rectangle {
            property bool hide: false
            property bool show: false

            id: correctorRectangle
            x: 1300
            y: 8
            width: 1264
            height: 504
            color: "#80000000"
            radius: 5
            visible: true

            NumberAnimation on x {
                to: -1300
                duration: 600
                running: correctorRectangle.hide
            }

            NumberAnimation on x {
                from: 1300
                to: 8
                duration: 600
                running: correctorRectangle.show
            }
            Row {
                id: row5
                x: 8
                y: 8
                width: 1248
                height: 30
                spacing: 5

                Label {
                    id: label18
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("1")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label19
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("2")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label20
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("3")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label21
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("4")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label22
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("5")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label23
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("6")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label24
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("7")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label25
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("8")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label26
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("9")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label27
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("10")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Row {
                id: row6
                x: 8
                y: 130
                width: 1248
                height: 50
                spacing: 5

                TextField {
                    id: sec0c0
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec0c1.focus = true
                }

                TextField {
                    id: sec1c0
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec1c1.focus = true
                }

                TextField {
                    id: sec2c0
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec2c1.focus = true
                }

                TextField {
                    id: sec3c0
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec3c1.focus = true
                }

                TextField {
                    id: sec4c0
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec4c1.focus = true
                }

                TextField {
                    id: sec5c0
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec5c1.focus = true
                }

                TextField {
                    id: sec6c0
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec6c1.focus = true
                }

                TextField {
                    id: sec7c0
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec7c1.focus = true
                }

                TextField {
                    id: sec8c0
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec8c1.focus = true
                }

                TextField {
                    id: sec9c0
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec9c1.focus = true
                }
            }

            Label {
                id: label28
                x: 8
                y: 92
                width: 1248
                height: 32
                color: "#ffffff"
                text: qsTr("Ток коррекции, А")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Row {
                id: row7
                x: 8
                y: 230
                width: 1248
                height: 50
                spacing: 5
                TextField {
                    id: sec0c1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec0c2.focus = true
                }

                TextField {
                    id: sec1c1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec1c2.focus = true
                }

                TextField {
                    id: sec2c1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec2c2.focus = true
                }

                TextField {
                    id: sec3c1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec3c2.focus = true
                }

                TextField {
                    id: sec4c1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec4c2.focus = true
                }

                TextField {
                    id: sec5c1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec5c2.focus = true
                }

                TextField {
                    id: sec6c1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec6c2.focus = true
                }

                TextField {
                    id: sec7c1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec7c2.focus = true
                }

                TextField {
                    id: sec8c1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec8c2.focus = true
                }

                TextField {
                    id: sec9c1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec9c2.focus = true
                }
            }

            Label {
                id: label29
                x: 8
                y: 192
                width: 1248
                height: 32
                color: "#ffffff"
                text: qsTr("Ток останова, А")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Row {
                id: row8
                x: 8
                y: 330
                width: 1248
                height: 50
                spacing: 5
                TextField {
                    id: sec0c2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec0c3.focus = true
                }

                TextField {
                    id: sec1c2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec1c3.focus = true
                }

                TextField {
                    id: sec2c2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec2c3.focus = true
                }

                TextField {
                    id: sec3c2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec3c3.focus = true
                }

                TextField {
                    id: sec4c2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec4c3.focus = true
                }

                TextField {
                    id: sec5c2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec5c3.focus = true
                }

                TextField {
                    id: sec6c2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec6c3.focus = true
                }

                TextField {
                    id: sec7c2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec7c3.focus = true
                }

                TextField {
                    id: sec8c2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec8c3.focus = true
                }

                TextField {
                    id: sec9c2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec9c3.focus = true
                }
            }

            Label {
                id: label30
                x: 8
                y: 298
                width: 1248
                height: 32
                color: "#ffffff"
                text: qsTr("Ток реверса, А")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Row {
                id: row9
                x: 8
                y: 439
                width: 1248
                height: 50
                spacing: 5
                TextField {
                    id: sec0c3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec1c0.focus = true
                }

                TextField {
                    id: sec1c3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec2c0.focus = true
                }

                TextField {
                    id: sec2c3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec3c0.focus = true
                }

                TextField {
                    id: sec3c3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec4c0.focus = true
                }

                TextField {
                    id: sec4c3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec5c0.focus = true
                }

                TextField {
                    id: sec5c3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec6c0.focus = true
                }

                TextField {
                    id: sec6c3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec7c0.focus = true
                }

                TextField {
                    id: sec7c3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec8c0.focus = true
                }

                TextField {
                    id: sec8c3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec9c0.focus = true
                }

                TextField {
                    id: sec9c3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: {
                        changeRectangle(reflowRectangle)
                        sec0r0.focus = true
                    }
                }
            }

            Label {
                id: label31
                x: 8
                y: 401
                width: 1248
                height: 32
                color: "#ffffff"
                text: qsTr("Ток КЗ, А")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label32
                x: 8
                y: 44
                width: 621
                height: 42
                color: "#ffffff"
                text: qsTr("Параметры корректора")
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 16
            }

            Label {
                id: label33
                x: 635
                y: 44
                width: 621
                height: 30
                color: "#ffffff"
                text: "Номер участка"
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }
        }

        /////////// REFLOW PARAMS
        Rectangle {
            property bool hide: false
            property bool show: false

            id: reflowRectangle
            x: 2577
            y: 8
            width: 1264
            height: 504
            color: "#80000000"
            radius: 5
            visible: true

            NumberAnimation on x {
                to: -1300
                duration: 600
                running: reflowRectangle.hide
            }

            NumberAnimation on x {
                from: 1300
                to: 8
                duration: 600
                running: reflowRectangle.show
            }
            Row {
                id: row
                x: 8
                y: 8
                width: 1248
                height: 30
                spacing: 5

                Label {
                    id: label
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("1")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label1
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("2")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label2
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("3")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label3
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("4")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label4
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("5")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label5
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("6")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label6
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("7")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label7
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("8")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label8
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("9")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Label {
                    id: label9
                    width: 120
                    height: 30
                    color: "#ffffff"
                    text: qsTr("10")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Label {
                id: label12
                x: 8
                y: 92
                width: 1248
                height: 32
                color: "#ffffff"
                text: qsTr("S, mm")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            Row {
                id: row1
                x: 8
                y: 130
                width: 1248
                height: 50
                spacing: 5

                TextField {
                    id: sec0r0
                    width: 120
                    height: 50
                    placeholderText: qsTr("0 sec0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec0r1.focus = true
                }

                TextField {
                    id: sec1r0
                    width: 120
                    height: 50
                    placeholderText: qsTr("0 sec1")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec1r1.focus = true
                }

                TextField {
                    id: sec2r0
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec2r1.focus = true
                }

                TextField {
                    id: sec3r0
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec3r1.focus = true
                }

                TextField {
                    id: sec4r0
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec4r1.focus = true
                }

                TextField {
                    id: sec5r0
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec5r1.focus = true
                }

                TextField {
                    id: sec6r0
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec6r1.focus = true
                }

                TextField {
                    id: sec7r0
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec7r1.focus = true
                }

                TextField {
                    id: sec8r0
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec8r1.focus = true
                }

                TextField {
                    id: sec9r0
                    width: 120
                    height: 50
                    placeholderText: qsTr("0")
                    horizontalAlignment: Text.AlignHCenter
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec9r1.focus = true
                }
            }

            Label {
                id: label13
                x: 8
                y: 192
                width: 1248
                height: 32
                color: "#ffffff"
                text: qsTr("Скорость вперёд, mm/c")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            Row {
                id: row2
                x: 8
                y: 230
                width: 1248
                height: 50
                spacing: 5
                TextField {
                    id: sec0r1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec0r2.focus = true
                }

                TextField {
                    id: sec1r1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec1r2.focus = true
                }

                TextField {
                    id: sec2r1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec2r2.focus = true
                }

                TextField {
                    id: sec3r1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec3r2.focus = true
                }

                TextField {
                    id: sec4r1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec4r2.focus = true
                }

                TextField {
                    id: sec5r1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec5r2.focus = true
                }

                TextField {
                    id: sec6r1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec6r2.focus = true
                }

                TextField {
                    id: sec7r1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec7r2.focus = true
                }

                TextField {
                    id: sec8r1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec8r2.focus = true
                }

                TextField {
                    id: sec9r1
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec9r2.focus = true
                }
            }

            Label {
                id: label14
                x: 8
                y: 298
                width: 1248
                height: 32
                color: "#ffffff"
                text: qsTr("Скорость назад, mm/c")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            Row {
                id: row3
                x: 8
                y: 330
                width: 1248
                height: 50
                spacing: 5
                TextField {
                    id: sec0r2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec0r3.focus = true
                }

                TextField {
                    id: sec1r2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec1r3.focus = true
                }

                TextField {
                    id: sec2r2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec2r3.focus = true
                }

                TextField {
                    id: sec3r2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec3r3.focus = true
                }

                TextField {
                    id: sec4r2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec4r3.focus = true
                }

                TextField {
                    id: sec5r2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec5r3.focus = true
                }

                TextField {
                    id: sec6r2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec6r3.focus = true
                }

                TextField {
                    id: sec7r2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec7r3.focus = true
                }

                TextField {
                    id: sec8r2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec8r3.focus = true
                }

                TextField {
                    id: sec9r2
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec9r3.focus = true
                }
            }

            Row {
                id: row4
                x: 8
                y: 439
                width: 1248
                height: 50
                spacing: 5
                TextField {
                    id: sec0r3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec1r0.focus = true
                }

                TextField {
                    id: sec1r3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec2r0.focus = true
                }

                TextField {
                    id: sec2r3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec3r0.focus = true
                }

                TextField {
                    id: sec3r3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec4r0.focus = true
                }

                TextField {
                    id: sec4r3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec5r0.focus = true
                }

                TextField {
                    id: sec5r3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec6r0.focus = true
                }

                TextField {
                    id: sec6r3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec7r0.focus = true
                }

                TextField {
                    id: sec7r3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec8r0.focus = true
                }

                TextField {
                    id: sec8r3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: sec9r0.focus = true
                }

                TextField {
                    id: sec9r3
                    width: 120
                    height: 50
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    onAccepted: {
                        changeRectangle(rectangle11)
                        ph0.focus = true
                    }
                }
            }

            Label {
                id: label15
                x: 8
                y: 401
                width: 1248
                height: 32
                color: "#ffffff"
                text: qsTr("U, %")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: label11
                x: 8
                y: 44
                width: 621
                height: 42
                color: "#ffffff"
                text: qsTr("Параметры оплавления")
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 16
            }

            Label {
                id: label10
                x: 635
                y: 44
                width: 621
                height: 29
                color: "#ffffff"
                text: "Номер участка"
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }
        }

        /////////// PROGRAMM DESCRIPTION
        Rectangle {
            property bool hide: false
            property bool show: false

            id: programmRectangle
            x: 8
            y: 8
            width: 1264
            height: 504
            color: "#80000000"
            radius: 5
            visible: true

            NumberAnimation on x {
                to: -1300
                duration: 600
                running: programmRectangle.hide
            }

            NumberAnimation on x {
                from: 1300
                to: 8
                duration: 600
                running: programmRectangle.show
            }

            TextField {
                id: programmName
                x: 8
                y: 54
                width: 611
                height: 40
                placeholderText: qsTr("Название программы")
                onAccepted: programmDescription.focus = true
            }

            Rectangle {
                id: rectangle2
                x: 8
                y: 113
                width: 1248
                height: 374
                color: "#ffffff"
                radius: 3

                TextArea {
                    id: programmDescription
                    x: 6
                    y: 7
                    width: 1234
                    height: 359
                    placeholderText: qsTr("Описание программы")
                }
            }

            Label {
                id: label16
                x: 645
                y: 13
                width: 611
                height: 35
                color: "#ffffff"
                text: "Допустимые диаметры:"
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                id: label17
                x: 922
                y: 54
                width: 58
                height: 40
                color: "#ffffff"
                text: qsTr("-")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.pointSize: 16
            }

            TextField {
                id: minDiameter
                x: 645
                y: 54
                width: 255
                height: 40
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                placeholderText: qsTr("Минимальный")
                onAccepted: maxDiameter.focus = true
            }

            TextField {
                id: maxDiameter
                x: 999
                y: 54
                width: 257
                height: 40
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                placeholderText: qsTr("Максимальный")
                onAccepted: {
                    changeRectangle(correctorRectangle)
                    sec0c0.focus = true
                }
            }

            Label {
                id: label108
                x: 8
                y: 13
                width: 611
                height: 35
                color: "#ffffff"
                text: "Программа  сварки"
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }
        }
        Rectangle {
            property bool hide: false
            property bool show: false

            id: rectangle11
            x: 3860
            y: 8
            width: 1264
            height: 504
            color: "#80000000"
            radius: 5
            visible: true

            NumberAnimation on x {
                to: -1300
                duration: 600
                running: rectangle11.hide
            }

            NumberAnimation on x {
                from: 1300
                to: 8
                duration: 600
                running: rectangle11.show
            }

            Label {
                id: label34
                x: 8
                y: 8
                width: 1248
                height: 32
                color: "#ffffff"
                text: qsTr("Параметры подогрева")
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 16
            }

            TextField {
                id: ph0
                x: 9
                y: 70
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: ph1.focus = true
            }

            Label {
                id: label35
                x: 156
                y: 70
                width: 457
                height: 40
                color: "#ffffff"
                text: "Скорость вперёд, мм/с"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: ph1
                x: 9
                y: 116
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: ph2.focus = true
            }

            Label {
                id: label36
                x: 156
                y: 116
                width: 457
                height: 40
                color: "#ffffff"
                text: "Скорость уплотнения, мм/с"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: ph2
                x: 9
                y: 162
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: ph3.focus = true
            }

            Label {
                id: label39
                x: 156
                y: 256
                width: 457
                height: 40
                color: "#ffffff"
                text: "Время уплотнения, мс"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: ph3
                x: 9
                y: 210
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: ph4.focus = true
            }

            Label {
                id: label42
                x: 156
                y: 396
                width: 457
                height: 40
                color: "#ffffff"
                text: "Число импульсов"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: ph4
                x: 9
                y: 256
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: ph5.focus = true
            }

            Label {
                id: label37
                x: 156
                y: 161
                width: 457
                height: 40
                color: "#ffffff"
                text: "Скорость назад, мм/с"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: ph5
                x: 9
                y: 304
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: ph6.focus = true
            }

            Label {
                id: label40
                x: 156
                y: 304
                width: 457
                height: 40
                color: "#ffffff"
                text: "Время подогрева, мс"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: ph6
                x: 9
                y: 350
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: ph7.focus = true
            }

            Label {
                id: label43
                x: 156
                y: 444
                width: 457
                height: 40
                color: "#ffffff"
                text: "Ток КЗ, А"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: ph7
                x: 9
                y: 396
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: ph8.focus = true
            }

            Label {
                id: label38
                x: 156
                y: 207
                width: 457
                height: 40
                color: "#ffffff"
                text: "Скорость последнего разведения, мм/с"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: ph8
                x: 9
                y: 444
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: ph9.focus = true
            }

            Label {
                id: label41
                x: 156
                y: 350
                width: 457
                height: 40
                color: "#ffffff"
                text: "Время паузы, мс"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: ph9
                x: 653
                y: 70
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: ph10.focus = true
            }

            Label {
                id: label44
                x: 800
                y: 70
                width: 457
                height: 40
                color: "#ffffff"
                text: "Ток ХХ, А"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: ph10
                x: 653
                y: 116
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: ph11.focus = true
            }

            Label {
                id: label45
                x: 800
                y: 116
                width: 457
                height: 40
                color: "#ffffff"
                text: "Напряжение подогрева, %"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: ph11
                x: 653
                y: 161
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: ph12.focus = true
            }

            Label {
                id: label46
                x: 800
                y: 161
                width: 457
                height: 40
                color: "#ffffff"
                text: "Время осадки с током, мс"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: ph12
                x: 653
                y: 207
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: {
                    changeRectangle(rectangle12)
                    b0.focus = true
                }
            }

            Label {
                id: label47
                x: 800
                y: 207
                width: 457
                height: 40
                color: "#ffffff"
                text: "Величина осадки, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }
        }

        Rectangle {
            property bool hide: false
            property bool show: false

            id: rectangle12
            x: 5143
            y: 8
            width: 1264
            height: 504
            visible: true
            color: "#80000000"
            radius: 5

            NumberAnimation on x {
                to: -1300
                duration: 600
                running: rectangle12.hide
            }

            NumberAnimation on x {
                from: 1300
                to: 8
                duration: 600
                running: rectangle12.show
            }

            TextField {
                id: b0
                x: 8
                y: 73
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: b1.focus = true
            }

            Label {
                id: label48
                x: 155
                y: 73
                width: 457
                height: 40
                color: "#ffffff"
                text: "Величина выжигания, м"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Label {
                id: label49
                x: 8
                y: 8
                width: 1248
                height: 32
                color: "#ffffff"
                text: qsTr("Параметры выжигания")
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 16
            }

            TextField {
                id: b1
                x: 8
                y: 119
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: b2.focus = true
            }

            Label {
                id: label50
                x: 155
                y: 119
                width: 457
                height: 40
                color: "#ffffff"
                text: "Скорость вперёд, мм/с"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: b2
                x: 8
                y: 165
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: b3.focus = true
            }

            Label {
                id: label51
                x: 155
                y: 165
                width: 457
                height: 40
                color: "#ffffff"
                text: "Скорость назад, мм/с"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: b3
                x: 8
                y: 211
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: b4.focus = true
            }

            Label {
                id: label52
                x: 155
                y: 211
                width: 457
                height: 40
                color: "#ffffff"
                text: "Напряжжение выжигания"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: b4
                x: 8
                y: 303
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: b5.focus = true
            }

            Label {
                id: label54
                x: 155
                y: 303
                width: 457
                height: 40
                color: "#ffffff"
                text: "I коррекции, А"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: b5
                x: 8
                y: 349
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: b6.focus = true
            }

            Label {
                id: label55
                x: 155
                y: 349
                width: 457
                height: 40
                color: "#ffffff"
                text: "I останова, А"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: b6
                x: 8
                y: 395
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: b7.focus = true
            }

            Label {
                id: label56
                x: 155
                y: 395
                width: 457
                height: 40
                color: "#ffffff"
                text: "I реверса, А"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: b7
                x: 8
                y: 441
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: cl0.focus = true
            }

            Label {
                id: label57
                x: 155
                y: 441
                width: 457
                height: 40
                color: "#ffffff"
                text: "I КЗ, А"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: cl0
                x: 652
                y: 73
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: cl1.focus = true
            }

            Label {
                id: label58
                x: 799
                y: 73
                width: 457
                height: 40
                color: "#ffffff"
                text: "Давление осадки/зажимов, Бар"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: cl1
                x: 652
                y: 119
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: cl2.focus = true
            }

            Label {
                id: label59
                x: 799
                y: 119
                width: 457
                height: 40
                color: "#ffffff"
                text: "Исходное, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: cl2
                x: 652
                y: 165
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: cl3.focus = true
            }

            Label {
                id: label60
                x: 799
                y: 165
                width: 457
                height: 40
                color: "#ffffff"
                text: "Время проковки, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: cl3
                x: 652
                y: 211
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: cl4.focus = true
            }

            Label {
                id: label61
                x: 799
                y: 211
                width: 457
                height: 40
                color: "#ffffff"
                text: "Величина разведения, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: cl4
                x: 652
                y: 257
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: cl5.focus = true
            }

            Label {
                id: label62
                x: 799
                y: 257
                width: 457
                height: 40
                color: "#ffffff"
                text: "Скорость разведения, мм/с"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: cl5
                x: 652
                y: 395
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: cl6.focus = true
            }

            Label {
                id: label65
                x: 799
                y: 395
                width: 457
                height: 40
                color: "#ffffff"
                text: "Срезка грата (1-вкл/0-выкл)"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: cl6
                x: 652
                y: 441
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: {
                    changeRectangle(rectangle13)
                    oth0.focus = true
                }
            }

            Label {
                id: label66
                x: 799
                y: 441
                width: 457
                height: 40
                color: "#ffffff"
                text: "Осадка (1-время/0-путь)"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }
        }

        //// BUTTONS NAVIGATION
        StepperBtn {
            id: button6
            x: 8
            y: 518
            text: qsTr("Программа")
            onClicked: {
                changeRectangle(programmRectangle)
            }
        }

        StepperBtn {
            id: button8
            x: 214
            y: 518
            text: qsTr("Корректор")
            onClicked: {
                changeRectangle(correctorRectangle)
                //                correctorRectangle.show = !correctorRectangle.show
            }
        }

        StepperBtn {
            id: button14
            x: 420
            y: 518
            text: "Оплавление"
            onClicked: {
                changeRectangle(reflowRectangle)
            }
        }

        StepperBtn {
            id: button9
            x: 660
            y: 518
            text: qsTr("Подогрев")
            onClicked: {
                changeRectangle(rectangle11)
            }
        }

        StepperBtn {
            id: button10
            x: 866
            y: 518
            text: "Выжигание"
            onClicked: {
                changeRectangle(rectangle12)
            }
        }

        StepperBtn {
            id: button11
            x: 1072
            y: 574
            text: "Сохранить"
            onClicked: {
                handler.save_programm(item1.programm)
            }
        }

        StepperBtn {
            id: button12
            x: 8
            y: 574
            text: qsTr("Выход")
            onClicked: {
                stackView.push(Qt.resolvedUrl("index.qml"))
            }
        }

        StepperBtn {
            id: button13
            x: 1072
            y: 518
            text: qsTr("Параметры цикла сварки")
            onClicked: {
                changeRectangle(rectangle13)
            }
        }

        Rectangle {
            property bool hide: false
            property bool show: false

            id: rectangle13
            x: 6432
            y: 8
            width: 1264
            height: 504
            visible: true
            color: "#80000000"
            radius: 5

            NumberAnimation on x {
                to: -1300
                duration: 600
                running: rectangle13.hide
            }

            NumberAnimation on x {
                from: 1300
                to: 8
                duration: 600
                running: rectangle13.show
            }

            TextField {
                id: oth0
                x: 10
                y: 73
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth1.focus = true
            }

            Label {
                id: label53
                x: 157
                y: 73
                width: 457
                height: 40
                color: "#ffffff"
                text: "Крайнее разведённое положение, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Label {
                id: label63
                x: 8
                y: 8
                width: 1248
                height: 32
                color: "#ffffff"
                text: qsTr("Параметры цикла сварки")
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 16
            }

            TextField {
                id: oth1
                x: 10
                y: 119
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth2.focus = true
            }

            Label {
                id: label64
                x: 157
                y: 119
                width: 457
                height: 40
                color: "#ffffff"
                text: "Крайнее сведённое положение, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth2
                x: 10
                y: 165
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth3.focus = true
            }

            Label {
                id: label67
                x: 157
                y: 165
                width: 457
                height: 40
                color: "#ffffff"
                text: "Зона возможного запуска, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth3
                x: 10
                y: 211
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth4.focus = true
            }

            Label {
                id: label68
                x: 157
                y: 211
                width: 457
                height: 40
                color: "#ffffff"
                text: "Расстояние между эл. в сведённом положении, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth4
                x: 10
                y: 257
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth5.focus = true
            }

            Label {
                id: label69
                x: 157
                y: 303
                width: 457
                height: 40
                color: "#ffffff"
                text: "Установка контроля положения плиты, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth5
                x: 10
                y: 303
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth6.focus = true
            }

            Label {
                id: label70
                x: 157
                y: 349
                width: 457
                height: 40
                color: "#ffffff"
                text: "Установка наличия проскальзования, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth6
                x: 10
                y: 349
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth7.focus = true
            }

            Label {
                id: label71
                x: 157
                y: 395
                width: 457
                height: 40
                color: "#ffffff"
                text: "Конечное положение при срезке грата, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth7
                x: 10
                y: 395
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth8.focus = true
            }

            Label {
                id: label72
                x: 157
                y: 441
                width: 457
                height: 40
                color: "#ffffff"
                text: "Скорость сведения, мм/с"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth8
                x: 10
                y: 441
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth9.focus = true
            }

            Label {
                id: label73
                x: 801
                y: 73
                width: 457
                height: 40
                color: "#ffffff"
                text: "Скорость разведения, мм/с"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth9
                x: 654
                y: 73
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth10.focus = true
            }

            Label {
                id: label74
                x: 801
                y: 119
                width: 457
                height: 40
                color: "#ffffff"
                text: "Скорость выхода в исходное положение, мм/с"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth10
                x: 654
                y: 119
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth11.focus = true
            }

            Label {
                id: label75
                x: 801
                y: 165
                width: 457
                height: 40
                color: "#ffffff"
                text: "Скорость движения в тесте, мм/с"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth11
                x: 654
                y: 165
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth12.focus = true
            }

            Label {
                id: label76
                x: 801
                y: 211
                width: 457
                height: 40
                color: "#ffffff"
                text: "Напряжение в ручном режиме, %"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth12
                x: 654
                y: 211
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth13.focus = true
            }

            Label {
                id: label77
                x: 801
                y: 257
                width: 457
                height: 40
                color: "#ffffff"
                text: "Разжим ПК, мс"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth13
                x: 654
                y: 257
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth14.focus = true
            }

            Label {
                id: label78
                x: 801
                y: 395
                width: 457
                height: 40
                color: "#ffffff"
                text: "Время контроля осадки, мс"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth14
                x: 654
                y: 303
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth15.focus = true
            }

            Label {
                id: label79
                x: 801
                y: 441
                width: 457
                height: 40
                color: "#ffffff"
                text: "Время контроля срезки, мс"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth15
                x: 654
                y: 349
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth16.focus = true
            }

            Label {
                id: label96
                x: 157
                y: 257
                width: 457
                height: 40
                color: "#ffffff"
                text: "Путь выключения клапана осадки, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth16
                x: 654
                y: 395
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: oth17.focus = true
            }

            Label {
                id: label97
                x: 801
                y: 303
                width: 457
                height: 40
                color: "#ffffff"
                text: "Разжим НК, мс"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: oth17
                x: 654
                y: 441
                width: 141
                height: 40
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: {
                    changeRectangle(rectangle14)
                    minPositionSensor.focus = true
                }
            }

            Label {
                id: label98
                x: 801
                y: 349
                width: 457
                height: 40
                color: "#ffffff"
                text: "Время подразжима, мс"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }
        }

        Rectangle {
            property bool hide: false
            property bool show: false

            id: rectangle14
            x: 7718
            y: 8
            width: 1264
            height: 504
            visible: true
            color: "#80000000"
            radius: 5

            NumberAnimation on x {
                to: -1300
                duration: 600
                running: rectangle14.hide
            }

            NumberAnimation on x {
                from: 1300
                to: 8
                duration: 600
                running: rectangle14.show
            }

            TextField {
                id: minPositionSensor
                x: 8
                y: 78
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: maxPositionSensor.focus = true
            }

            Label {
                id: label80
                x: 155
                y: 78
                width: 457
                height: 30
                color: "#ffffff"
                text: "Минимальное значение, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Label {
                id: label81
                x: 8
                y: 8
                width: 604
                height: 30
                color: "#ffffff"
                text: qsTr("Настройка датчиков")
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 16
            }

            TextField {
                id: maxPositionSensor
                x: 8
                y: 114
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: minPrimaryVoltageSensor.focus = true
            }

            Label {
                id: label82
                x: 155
                y: 114
                width: 457
                height: 30
                color: "#ffffff"
                text: "Максимальное положение, мм"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: minPrimaryVoltageSensor
                x: 8
                y: 191
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: maxPrimaryVoltageSensor.focus = true
            }

            Label {
                id: label83
                x: 155
                y: 227
                width: 457
                height: 30
                color: "#ffffff"
                text: "Максимальное значение, В"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: maxPrimaryVoltageSensor
                x: 8
                y: 227
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: minPKPressureMeterSensor.focus = true
            }

            Label {
                id: label84
                x: 155
                y: 191
                width: 457
                height: 30
                color: "#ffffff"
                text: "Минимальное значение, В"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: minPKPressureMeterSensor
                x: 8
                y: 299
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: maxPKPressureMeterSensor.focus = true
            }

            Label {
                id: label86
                x: 155
                y: 299
                width: 457
                height: 30
                color: "#ffffff"
                text: "Минимальное значение, Бар"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: maxPKPressureMeterSensor
                x: 8
                y: 335
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: minHydraulicPressureSensor.focus = true
            }

            Label {
                id: label87
                x: 155
                y: 335
                width: 457
                height: 30
                color: "#ffffff"
                text: "Максимальное значение, Бар"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: minHydraulicPressureSensor
                x: 8
                y: 415
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: maxHydraulicPressureSensor.focus = true
            }

            Label {
                id: label89
                x: 155
                y: 415
                width: 457
                height: 30
                color: "#ffffff"
                text: "Минимальное значение, Бар"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: maxHydraulicPressureSensor
                x: 8
                y: 451
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: minCurrentSensor.focus = true
            }

            Label {
                id: label90
                x: 155
                y: 451
                width: 457
                height: 30
                color: "#ffffff"
                text: "Максимальное значение, Бар"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: minCurrentSensor
                x: 643
                y: 78
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: maxCurrentSensor.focus = true
            }

            Label {
                id: label92
                x: 790
                y: 78
                width: 457
                height: 30
                color: "#ffffff"
                text: "Минимальное значение, А"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: maxCurrentSensor
                x: 643
                y: 114
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: minSedimentPressureSensor.focus = true
            }

            Label {
                id: label93
                x: 790
                y: 114
                width: 457
                height: 30
                color: "#ffffff"
                text: "Максимальное значение , А"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: minSedimentPressureSensor
                x: 643
                y: 191
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: maxSedimentPressureSensor.focus = true
            }

            Label {
                id: label94
                x: 790
                y: 191
                width: 457
                height: 30
                color: "#ffffff"
                text: "Минимальное значение, Бар"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: maxSedimentPressureSensor
                x: 643
                y: 227
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: minNKPressureMeterSensor.focus = true
            }

            Label {
                id: label95
                x: 790
                y: 227
                width: 457
                height: 30
                color: "#ffffff"
                text: "Максимальное значение, Бар"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Label {
                id: label99
                x: 8
                y: 42
                width: 604
                height: 30
                color: "#ffffff"
                text: qsTr("Датчик положения")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Label {
                id: label100
                x: 8
                y: 155
                width: 604
                height: 30
                color: "#ffffff"
                text: qsTr("Датчик напряженияпервичной обмотки")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Label {
                id: label85
                x: 8
                y: 263
                width: 604
                height: 30
                color: "#ffffff"
                text: qsTr("Датчик давления ПК")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Label {
                id: label101
                x: 8
                y: 379
                width: 604
                height: 30
                color: "#ffffff"
                text: qsTr("Датчик давления Гидростанции")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Label {
                id: label102
                x: 643
                y: 42
                width: 604
                height: 30
                color: "#ffffff"
                text: qsTr("Датчик тока")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Label {
                id: label103
                x: 643
                y: 155
                width: 604
                height: 30
                color: "#ffffff"
                text: qsTr("Датчик давления осадки")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: minNKPressureMeterSensor
                x: 643
                y: 299
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: maxNKPressureMeterSensor.focus = true
            }

            Label {
                id: label88
                x: 790
                y: 299
                width: 457
                height: 30
                color: "#ffffff"
                text: "Минимальное значение, Бар"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: maxNKPressureMeterSensor
                x: 643
                y: 335
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: minOilTemperatureSensor.focus = true
            }

            Label {
                id: label91
                x: 790
                y: 335
                width: 457
                height: 30
                color: "#ffffff"
                text: "Максимальное значение, Бар"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Label {
                id: label104
                x: 643
                y: 263
                width: 604
                height: 30
                color: "#ffffff"
                text: qsTr("Датчик давления НК")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Label {
                id: label105
                x: 790
                y: 415
                width: 457
                height: 30
                color: "#ffffff"
                text: "Минимальное значение, С"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            Label {
                id: label106
                x: 790
                y: 451
                width: 457
                height: 30
                color: "#ffffff"
                text: "Максимальное значение, С"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }

            TextField {
                id: minOilTemperatureSensor
                x: 643
                y: 415
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: maxOilTemperatureSensor.focus = true
            }

            TextField {
                id: maxOilTemperatureSensor
                x: 643
                y: 451
                width: 141
                height: 30
                placeholderText: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: console.log("Saving???")
            }

            Label {
                id: label107
                x: 643
                y: 379
                width: 604
                height: 30
                color: "#ffffff"
                text: qsTr("Датчик температуры масла")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
            }
        }

        StepperBtn {
            id: button15
            x: 214
            y: 574
            text: qsTr("Настройка датчиков")
            onClicked: {
                changeRectangle(rectangle14)
            }
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

