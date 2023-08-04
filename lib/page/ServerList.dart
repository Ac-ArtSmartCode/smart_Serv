import 'package:flutter/material.dart';
import 'package:project/models/ServerModels.dart';
import 'package:project/page/ServerProcess.dart';

class ServerList extends StatefulWidget {
  const ServerList({super.key});

  @override
  State<ServerList> createState() => _ServerListState();
}

class _ServerListState extends State<ServerList> {
  List<ServerModels> server = [
    ServerModels(
      acative: true,
      charges: 1570.50,
      cpu: 75.3,
      disk: 89,
      gpu: 20,
      ram: 50,
      watt: 750,
      wattValue: 475,
      sname: "SERVER :: 1",
    ),
    ServerModels(
      acative: true,
      charges: 2539.87,
      cpu: 75.3,
      disk: 89,
      gpu: 20,
      ram: 50,
      watt: 750,
      wattValue: 475,
      sname: "SERVER :: 2",
    ),
    ServerModels(
      acative: false,
      charges: 1570.50,
      cpu: 75.3,
      disk: 89,
      gpu: 20,
      ram: 50,
      watt: 750,
      wattValue: 475,
      sname: "SERVER :: 3",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: server.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 7),
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(27, 34, 44, 1),
            ),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ServerProcess(
                              server: server[index],
                            )));
              },
              titleAlignment: ListTileTitleAlignment.center,
              visualDensity: VisualDensity(vertical: 1),
              leading: const Icon(
                Icons.kitchen_rounded,
                size: 60,
                color: Colors.white,
              ),
              title: Text(
                "${server[index].sname}",
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
              subtitle: server[index].acative!
                  ? const Text(
                      "running",
                      style: TextStyle(color: Colors.green),
                    )
                  : const Text(
                      "stopping",
                      style: TextStyle(color: Colors.redAccent),
                    ),
              trailing: const Icon(
                Icons.double_arrow,
                size: 50,
                color: Colors.white,
              ),
            ),
          );
        });
  }
}
