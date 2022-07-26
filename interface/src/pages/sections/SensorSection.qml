import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle {
    property bool hide: false
    property bool show: false

    property var sedimentpressuresensormodel: {
        "min_value": minSedimentPressureSensor.text,
        "max_value": maxSedimentPressureSensor.text
    }
    property var primaryvoltagesensormodel: {
        "min_value": minPrimaryVoltageSensor.text,
        "max_value": maxPrimaryVoltageSensor.text
    }
    property var positionsensormodel: {
        "min_value": minPositionSensor.text,
        "max_value": maxPositionSensor.text
    }
    property var pkpressuremetersensormodel: {
        "min_value": minPKPressureMeterSensor.text,
        "max_value": maxPKPressureMeterSensor.text
    }
    property var oiltemperaturesensormodel: {
        "min_value": minOilTemperatureSensor.text,
        "max_value": maxOilTemperatureSensor.text
    }
    property var nkpressuremetersensormodel: {
        "min_value": minNKPressureMeterSensor.text,
        "max_value": maxNKPressureMeterSensor.text
    }
    property var hydraulicpressuresensormodel: {
        "min_value": minHydraulicPressureSensor.text,
        "max_value": maxHydraulicPressureSensor.text
    }
    property var currentsensormodel: {
        "min_value": minCurrentSensor.text,
        "max_value": maxCurrentSensor.text
    }

    id: rectangle14
    x: 0
    y: 0
    width: 1264
    height: 490
    visible: true
    color: "#50000000"
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
        y: 87
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("min")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: maxPositionSensor.focus = true
    }

    Label {
        id: label81
        x: 652
        y: 8
        width: 604
        height: 30
        color: "#ffffff"
        text: qsTr("Настройка датчиков")
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 16
    }

    TextField {
        id: maxPositionSensor
        x: 201
        y: 87
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("max")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: minPrimaryVoltageSensor.focus = true
    }

    TextField {
        id: minPrimaryVoltageSensor
        x: 8
        y: 271
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("min")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: maxPrimaryVoltageSensor.focus = true
    }

    TextField {
        id: maxPrimaryVoltageSensor
        x: 201
        y: 271
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("max")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: minPKPressureMeterSensor.focus = true
    }

    Label {
        id: label84
        x: 156
        y: 271
        width: 40
        height: 40
        color: "#ffffff"
        text: "-"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: minPKPressureMeterSensor
        x: 8
        y: 179
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("min")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: maxPKPressureMeterSensor.focus = true
    }

    TextField {
        id: maxPKPressureMeterSensor
        x: 201
        y: 179
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("max")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: minHydraulicPressureSensor.focus = true
    }

    Label {
        id: label87
        x: 155
        y: 179
        width: 40
        height: 40
        color: "#ffffff"
        text: "-"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: minHydraulicPressureSensor
        x: 8
        y: 317
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("min")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: maxHydraulicPressureSensor.focus = true
    }

    TextField {
        id: maxHydraulicPressureSensor
        x: 201
        y: 317
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("max")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: minCurrentSensor.focus = true
    }

    Label {
        id: label90
        x: 155
        y: 317
        width: 40
        height: 40
        color: "#ffffff"
        text: "-"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: minCurrentSensor
        x: 8
        y: 133
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("min")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: maxCurrentSensor.focus = true
    }

    TextField {
        id: maxCurrentSensor
        x: 201
        y: 133
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("max")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: minSedimentPressureSensor.focus = true
    }

    Label {
        id: label93
        x: 155
        y: 133
        width: 40
        height: 40
        color: "#ffffff"
        text: "-"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: minSedimentPressureSensor
        x: 8
        y: 363
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("min")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: maxSedimentPressureSensor.focus = true
    }

    TextField {
        id: maxSedimentPressureSensor
        x: 201
        y: 363
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("max")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: minNKPressureMeterSensor.focus = true
    }

    Label {
        id: label95
        x: 155
        y: 363
        width: 40
        height: 40
        color: "#ffffff"
        text: "-"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label99
        x: 355
        y: 87
        width: 258
        height: 40
        color: "#ffffff"
        text: qsTr("Датчик положения, мм")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label100
        x: 355
        y: 271
        width: 396
        height: 40
        color: "#ffffff"
        text: qsTr("Датчик напряжения первичной обмотки, В")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label85
        x: 355
        y: 179
        width: 258
        height: 40
        color: "#ffffff"
        text: qsTr("Датчик давления ПК, Бар")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label101
        x: 355
        y: 317
        width: 396
        height: 40
        color: "#ffffff"
        text: qsTr("Датчик давления Гидростанции, Бар")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label102
        x: 355
        y: 133
        width: 258
        height: 40
        color: "#ffffff"
        text: qsTr("Датчик тока, А")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label103
        x: 355
        y: 363
        width: 337
        height: 40
        color: "#ffffff"
        text: qsTr("Датчик давления осадки, Бар")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: minNKPressureMeterSensor
        x: 8
        y: 225
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("min")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: maxNKPressureMeterSensor.focus = true
    }

    TextField {
        id: maxNKPressureMeterSensor
        x: 201
        y: 225
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("max")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: minOilTemperatureSensor.focus = true
    }

    Label {
        id: label91
        x: 155
        y: 225
        width: 40
        height: 40
        color: "#ffffff"
        text: "-"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label104
        x: 355
        y: 225
        width: 258
        height: 40
        color: "#ffffff"
        text: qsTr("Датчик давления НК, Бар")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label106
        x: 155
        y: 409
        width: 40
        height: 40
        color: "#ffffff"
        text: "-"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: minOilTemperatureSensor
        x: 8
        y: 409
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("min")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: maxOilTemperatureSensor.focus = true
    }

    TextField {
        id: maxOilTemperatureSensor
        x: 201
        y: 409
        width: 141
        height: 40
        color: "#ffffff"
        placeholderTextColor: "#ffffff"
        Material.accent: Material.Blue
        Material.background: Material.Blue
        Material.theme: Material.Dark
        placeholderText: qsTr("max")
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        onAccepted: console.log("Saving???")
    }

    Label {
        id: label107
        x: 355
        y: 409
        width: 337
        height: 40
        color: "#ffffff"
        text: qsTr("Датчик температуры масла, Бар")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label82
        x: 155
        y: 87
        width: 40
        height: 40
        color: "#ffffff"
        text: "-"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:33}
}
##^##*/

