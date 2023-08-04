import 'package:flutter/material.dart';
import 'package:project/models/ServerModels.dart';
import 'package:project/widgets/BarChart.dart';
import 'package:project/widgets/ChargeBox.dart';
import 'package:project/widgets/DiskUserBox.dart';
import 'package:project/widgets/ProcessBox.dart';
import 'package:project/widgets/WattBox.dart';

class ServerProcess extends StatefulWidget {
  ServerProcess({super.key, required this.server});
  ServerModels server;
  @override
  State<ServerProcess> createState() => _ServerProcessState();
}

class _ServerProcessState extends State<ServerProcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.server.sname}", style: TextStyle(fontSize: 25)),
        backgroundColor: const Color.fromRGBO(18, 21, 28, 1),
      ),
      body: widget.server.acative!
          ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DiskUserBox(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChargesBox(charge: widget.server.charges!),
                        SizedBox(
                          height: 10,
                        ),
                        WattBox(
                          watt: widget.server.watt,
                          value: widget.server.wattValue,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                BarCharts(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProcessBox(
                      title: "CPU",
                      value: widget.server.cpu!,
                    ),
                    ProcessBox(title: "RAM", value: widget.server.ram!),
                    ProcessBox(
                      title: "GPU",
                      value: widget.server.gpu!,
                    )
                  ],
                )
              ]),
            )
          : const Center(
              child: Text(
                "Server is closed",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
      backgroundColor: const Color.fromRGBO(18, 21, 28, 1),
    );
  }
}
