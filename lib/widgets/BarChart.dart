import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:project/models/ChartData.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarCharts extends StatefulWidget {
  const BarCharts({super.key});

  @override
  State<BarCharts> createState() => _BarChartsState();
}

class _BarChartsState extends State<BarCharts> {
  final List<ChartData> chartData = [
    ChartData(1600, "2023"),
    ChartData(2300, "2022"),
    ChartData(1750, "2021"),
    ChartData(1370, "2020"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 370,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              enableSideBySideSeriesPlacement: false,
              series: <ChartSeries<ChartData, String>>[
                // Renders column chart
                ColumnSeries<ChartData, String>(
                    color: Colors.red.shade900,
                    dataSource: chartData,
                    isVisible: true,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y)
              ]),
        ));
  }
}
