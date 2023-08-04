import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class DiskUserBox extends StatefulWidget {
  const DiskUserBox({super.key});

  @override
  State<DiskUserBox> createState() => _DiskUserBoxState();
}

class _DiskUserBoxState extends State<DiskUserBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      width: 130,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          width: 90,
          height: 90,
          child: SfRadialGauge(
            axes: [
              RadialAxis(
                annotations: [
                  GaugeAnnotation(
                    widget: Text(
                      "${90}%",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                    angle: 90,
                    positionFactor: 0.1,
                  )
                ],
                minimum: 0,
                maximum: 100,
                showLabels: false,
                showTicks: false,
                startAngle: 90,
                canScaleToFit: false,
                endAngle: 90,
                axisLineStyle: AxisLineStyle(
                  thickness: 0.2,
                  color: Colors.grey.shade500,
                  thicknessUnit: GaugeSizeUnit.factor,
                ),
                pointers: const <GaugePointer>[
                  RangePointer(
                    color: Color.fromRGBO(182, 45, 47, 1),
                    value: 83,
                    width: 0.2,
                    pointerOffset: 0,
                    sizeUnit: GaugeSizeUnit.factor,
                  )
                ],
              )
            ],
            enableLoadingAnimation: true,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "DISK",
          style: TextStyle(
              color: Colors.red.shade900,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
