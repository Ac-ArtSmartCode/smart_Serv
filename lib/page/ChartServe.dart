import 'package:flutter/material.dart';
import 'package:project/widgets/PieCharts.dart';

class ChartServe extends StatefulWidget {
  const ChartServe({super.key});

  @override
  State<ChartServe> createState() => _ChartServeState();
}

class _ChartServeState extends State<ChartServe> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "SERVER ANALYTICS",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        Divider(
          color: Colors.grey,
          height: 1,
          thickness: 1,
        ),
        SizedBox(
          height: 20,
        ),
        PieCharts()
      ],
    );
  }
}
