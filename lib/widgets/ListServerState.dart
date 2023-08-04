import 'package:flutter/material.dart';
import 'package:project/models/ServerModels.dart';
import 'package:quickalert/quickalert.dart';

class ListServerState extends StatefulWidget {
  const ListServerState({super.key});

  @override
  State<ListServerState> createState() => _ListServerStateState();
}

class _ListServerStateState extends State<ListServerState> {
  // final ServerModels c = Get.put(ServerModels());

  List<ServerModels> serverDetail = [
    ServerModels(sname: "SERVER :: 1", acative: false, date: "23/06/2023"),
    ServerModels(sname: "SERVER :: 2", acative: true, date: "27/06/2023"),
    ServerModels(sname: "SERVER :: 3", acative: false, date: "03/07/2023"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: serverDetail.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(27, 34, 44, 1),
              ),
              height: 75,
              child: ListTile(
                visualDensity: const VisualDensity(vertical: 4),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                title: Text(
                  "${serverDetail[index].sname}",
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ),
                subtitle: Text(
                  "${serverDetail[index].date}",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Switch(
                  // thumb color (round icon)
                  activeColor: const Color.fromRGBO(182, 45, 47, 1),
                  activeTrackColor: Colors.grey.shade200,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.grey.shade200,
                  splashRadius: 30.0,

                  // boolean variable value
                  value: serverDetail[index].acative!,
                  // changes the state of the switch
                  onChanged: (bool value) {
                    QuickAlert.show(
                        context: context,
                        type: QuickAlertType.warning,
                        confirmBtnColor: Colors.red.shade900,
                        animType: QuickAlertAnimType.scale,
                        cancelBtnText: "Cancel",
                        text:
                            "Do you want to turn Server ${serverDetail[index].acative! ? 'off?' : 'on?'}",
                        showCancelBtn: true,
                        confirmBtnText: "Yes",
                        onConfirmBtnTap: () {
                          setState(() {
                            serverDetail[index].acative = value;
                          });
                          Navigator.pop(context);
                        });
                  },
                ),
              ),
            ),
          );
        });
  }
}
