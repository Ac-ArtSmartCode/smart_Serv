import 'dart:ffi';

import 'package:get/get.dart';

class ServerModels extends GetxController {
  String? sname;
  double? disk;
  double? ram;
  double? cpu;
  double? gpu;
  int? watt;
  int? wattValue;
  double? charges;
  String? date;
  bool? acative;
  ServerModels({
    this.sname,
    this.date,
    this.acative,
    this.charges,
    this.cpu,
    this.disk,
    this.gpu,
    this.ram,
    this.watt,
    this.wattValue,
  });
  toggleSwitch(bool status) {
    acative = status;
  }
}
