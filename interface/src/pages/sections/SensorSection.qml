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
    height: 504
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
        x: 142
        y: 155
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
        id: label80
        x: 489
        y: 155
        width: 90
        height: 40
        color: "#ffffff"
        text: ", мм"
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
        x: 336
        y: 155
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
        x: 141
        y: 263
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

    Label {
        id: label83
        x: 482
        y: 263
        width: 90
        height: 40
        color: "#ffffff"
        text: ", В"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: maxPrimaryVoltageSensor
        x: 335
        y: 263
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
        x: 289
        y: 263
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
        x: 142
        y: 350
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

    Label {
        id: label86
        x: 489
        y: 350
        width: 90
        height: 40
        color: "#ffffff"
        text: ", Бар"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: maxPKPressureMeterSensor
        x: 336
        y: 350
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
        x: 289
        y: 350
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
        x: 141
        y: 448
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

    Label {
        id: label89
        x: 482
        y: 448
        width: 90
        height: 40
        color: "#ffffff"
        text: ", Бар"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: maxHydraulicPressureSensor
        x: 334
        y: 448
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
        x: 288
        y: 448
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
        x: 787
        y: 155
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

    Label {
        id: label92
        x: 1127
        y: 155
        width: 90
        height: 40
        color: "#ffffff"
        text: ", А"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: maxCurrentSensor
        x: 980
        y: 155
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
        x: 934
        y: 155
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
        x: 787
        y: 263
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

    Label {
        id: label94
        x: 1127
        y: 263
        width: 90
        height: 40
        color: "#ffffff"
        text: ",Бар"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: maxSedimentPressureSensor
        x: 980
        y: 263
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
        x: 934
        y: 263
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
        x: 7
        y: 112
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
        y: 220
        width: 604
        height: 30
        color: "#ffffff"
        text: qsTr("Датчик напряжения первичной обмотки")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label85
        x: 8
        y: 314
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
        x: 7
        y: 412
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
        y: 112
        width: 613
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
        y: 220
        width: 613
        height: 30
        color: "#ffffff"
        text: qsTr("Датчик давления осадки")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: minNKPressureMeterSensor
        x: 787
        y: 350
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

    Label {
        id: label88
        x: 1127
        y: 350
        width: 90
        height: 40
        color: "#ffffff"
        text: ", Бар"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    TextField {
        id: maxNKPressureMeterSensor
        x: 980
        y: 350
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
        x: 934
        y: 350
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
        x: 643
        y: 314
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
        x: 1127
        y: 448
        width: 90
        height: 40
        color: "#ffffff"
        text: ", С"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label106
        x: 934
        y: 448
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
        x: 787
        y: 448
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
        x: 980
        y: 448
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
        x: 643
        y: 412
        width: 613
        height: 30
        color: "#ffffff"
        text: qsTr("Датчик температуры масла")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Label {
        id: label82
        x: 289
        y: 155
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
    D{i:0;formeditorZoom:0.75}D{i:41}
}
##^##*/

