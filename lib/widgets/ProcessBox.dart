import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ProcessBox extends StatefulWidget {
  ProcessBox({super.key, this.title, required this.value});
  String? title;
  double value = 0;

  @override
  State<ProcessBox> createState() => _ProcessBoxState();
}

class _ProcessBoxState extends State<ProcessBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: Color.fromRGBO(27, 34, 44, 1),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              height: 120,
              padding: EdgeInsets.only(top: 15),
              width: 127,
              child: SfRadialGauge(axes: <RadialAxis>[
                RadialAxis(
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        positionFactor: 0.1,
                        angle: 90,
                        widget: Text(
                          "${widget.value}%",
                          style: const TextStyle(
                              fontSize: 18, color: Colors.white),
                        ))
                  ],
                  showLabels: false,
                  showTicks: false,
                  startAngle: 180,
                  endAngle: 0,
                  radiusFactor: 0.9,
                  canScaleToFit: false,
                  axisLineStyle: const AxisLineStyle(
                    thickness: 0.3,
                    color: Color.fromARGB(30, 0, 169, 181),
                    thicknessUnit: GaugeSizeUnit.factor,
                    cornerStyle: CornerStyle.startCurve,
                  ),
                  pointers: <GaugePointer>[
                    RangePointer(
                      color: Color.fromRGBO(182, 45, 47, 1),
                      value: widget.value,
                      width: 0.3,
                      sizeUnit: GaugeSizeUnit.factor,
                      cornerStyle: CornerStyle.endCurve,
                      animationType: AnimationType.ease,
                    )
                  ],
                )
              ], enableLoadingAnimation: true),
            ),
            Text(
              widget.title.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
