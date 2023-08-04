import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.grey,
          height: 2.5,
          thickness: 1,
          indent: 0,
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "ANALYTICS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 160,
          child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 10,
              minY: 0,
              maxY: 10,
              backgroundColor: Colors.transparent,
              lineBarsData: [
                LineChartBarData(
                    spots: [
                      const FlSpot(0, 4),
                      const FlSpot(1, 6),
                      const FlSpot(2, 8),
                      const FlSpot(3, 6.2),
                      const FlSpot(4, 6),
                      const FlSpot(5, 8),
                      const FlSpot(6, 9),
                      const FlSpot(7, 7),
                      const FlSpot(8, 6),
                      const FlSpot(9, 7.8),
                      const FlSpot(10, 8),
                    ],
                    isCurved: true,
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(163, 18, 87, 1),
                        Color.fromRGBO(182, 45, 47, 1),
                      ],
                    ),
                    barWidth: 3,
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: const LinearGradient(colors: [
                        Color.fromRGBO(163, 18, 87, 0.2),
                        Color.fromRGBO(182, 45, 47, 0.2),
                      ]),
                    ),
                    dotData: FlDotData(show: false))
              ],
              gridData: FlGridData(
                show: true,
                drawHorizontalLine: false,
                drawVerticalLine: true,
                getDrawingVerticalLine: (value) {
                  return const FlLine(color: Colors.grey, strokeWidth: 0.8);
                },
              ),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 13,
                    getTitlesWidget: (value, meta) {
                      String text = "";
                      switch (value.toInt()) {
                        case 0:
                          text = "0";
                          break;
                        case 1:
                          text = "1";
                          break;
                        case 2:
                          text = "2";
                          break;
                        case 3:
                          text = "3";
                          break;
                        case 4:
                          text = "4";
                          break;
                        case 5:
                          text = "5";
                          break;
                        case 6:
                          text = "6";
                          break;
                        case 7:
                          text = "7";
                          break;
                        case 8:
                          text = "8";
                          break;
                        case 9:
                          text = "9";
                          break;
                        case 10:
                          text = "10";
                          break;
                      }
                      return Text(
                        text,
                        style: TextStyle(color: Colors.white),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
