import 'package:flutter/material.dart';
import 'package:project/models/PieChartData.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieCharts extends StatefulWidget {
  const PieCharts({super.key});

  @override
  State<PieCharts> createState() => _PieChartsState();
}

class _PieChartsState extends State<PieCharts> {
  final List<PieChartDatas> _chartData = [
    PieChartDatas(type: "WebServer", value: 10),
    PieChartDatas(type: "FTPSever", value: 5),
    PieChartDatas(type: "EmailServer", value: 10),
    PieChartDatas(type: "DNSServer", value: 3),
    PieChartDatas(type: "Other..", value: 20),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: SfCircularChart(
        legend: const Legend(
            isVisible: true,
            position: LegendPosition.bottom,
            isResponsive: false,
            textStyle: TextStyle(color: Colors.white, fontSize: 20),
            overflowMode: LegendItemOverflowMode.wrap),
        series: <CircularSeries>[
          PieSeries<PieChartDatas, String>(
              dataSource: _chartData,
              xValueMapper: (PieChartDatas data, _) => data.type,
              yValueMapper: (PieChartDatas data, _) => data.value,
              dataLabelSettings: DataLabelSettings(
                isVisible: true,
                textStyle: TextStyle(fontSize: 20, color: Colors.white),
              )),
        ],
      ),
    );
  }
}
