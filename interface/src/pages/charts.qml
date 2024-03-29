import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtCharts 2.0

import "../sensors/rt-chart"

Item {
    id: chartsPage
    property int currentIndex: 0
    property bool running: true
    property bool show: false
    property int minshow: 0
    property int maxshow: 20

    Rectangle {
        id: rectangle
        color: "#004f90"
        anchors.fill: parent

        ChartView {
            id: chartView
            //            title: "title"
            anchors.fill: parent
            anchors.bottomMargin: 100
            legend.alignment: Qt.AlignTop
            animationOptions: ChartView.SeriesAnimations
            theme: ChartView.ChartThemeBlueCerulean ///ChartView.ChartThemeLight
            antialiasing: true
            //            backgroundColor: "#ffffff55"
        }

        Button {
            x: 618
            y: 936
            width: 324
            height: 80
            text: qsTr("Визуализация")
            font.pointSize: 14
            Material.background: Material.Blue
            highlighted: true
            onClicked: {
                stackView.push(Qt.resolvedUrl("action.qml"))
            }
        }

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

    Connections {
        target: handler

        function onChartData(data) {
            var line
            for (line in data) {

                var lineSeries = chartView.series(data[line].name)

                if (!lineSeries) {
                    if (data[line].name === "name 2"
                            || data[line].name === "name 3") {
                        lineSeries = chartView.createSeries(
                                    ChartView.SeriesTypeSpline,
                                    data[line].name, data[line].x, data[line].y)
                    } else {
                        lineSeries = chartView.createSeries(
                                    ChartView.SeriesTypeLine, data[line].name,
                                    data[line].x, data[line].y)
                    }

                    ///types:
                    ///ChartView.SeriesTypeLine	A line series.
                    ///ChartView.SeriesTypeArea	An area series.
                    ///ChartView.SeriesTypeBar	A bar series.
                    ///ChartView.SeriesTypeStackedBar	A stacked bar series.
                    ///ChartView.SeriesTypePercentBar	A percent bar series.
                    ///ChartView.SeriesTypeBoxPlot	A box plot series.
                    ///ChartView.SeriesTypeCandlestick	A candlestick series.
                    ///ChartView.SeriesTypePie	A pie series.
                    ///ChartView.SeriesTypeScatter	A scatter series.
                    ///ChartView.SeriesTypeSpline	A spline series.
                    ///ChartView.SeriesTypeHorizontalBar	A horizontal bar series.
                    ///ChartView.SeriesTypeHorizontalStackedBar	A horizontal stacked bar series.
                    ///ChartView.SeriesTypeHorizontalPercentBar	A horizontal percent bar series.
                    ///
                    chartView.axisY().min = 0
                    chartView.axisY().max = 200
                    chartView.axisY().tickCount = 9
                    chartView.axisY().titleText = "kA"
                    chartView.axisX().labelFormat = "%.0f"
                }

                lineSeries.append(data[line].x, data[line].y)
            }

            if (show) {
                //                chartView.animationOptions = ChartView.AllAnimations
                chartView.axisX().min = 0
                chartView.axisX().max = speedsXml.get(
                            currentIndex - 1).speedTrap
            } else {
                if (data[data.length - 1].x > 10) {

                    chartView.axisX().max = Number(data[data.length - 1].x) + 1
                    chartView.axisX().min = chartView.axisX().max - 10
                } else {

                    chartView.axisX().max = 10
                    chartView.axisX().min = 0
                }

                chartView.axisX().tickCount = chartView.axisX(
                            ).max - chartView.axisX().min + 1
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:1024;width:1280}
}
##^##*/

