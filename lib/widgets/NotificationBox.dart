import 'package:flutter/material.dart';
import 'package:project/models/ServerNotiModels.dart';

class NotificationBox extends StatefulWidget {
  const NotificationBox({super.key});

  @override
  State<NotificationBox> createState() => _NotificationBoxState();
}

class _NotificationBoxState extends State<NotificationBox> {
  List<ServerNotiModels> notifications = [
    ServerNotiModels(
        notiName: "ERROR!!",
        date: "25/06/2023",
        description: "server request error!"),
    ServerNotiModels(
        notiName: "Warning?!",
        date: "27/06/2023",
        description: "don’t have request server"),
    ServerNotiModels(
        notiName: "ERROR!!",
        date: "09/07/2023",
        description: "server can't response"),
    ServerNotiModels(
        notiName: "Charges", date: "11/07/2023", description: "Late payment"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(163, 18, 87, 1),
                    Color.fromRGBO(182, 45, 47, 1),
                  ]),
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                title: Text(
                  "${notifications[index].notiName}",
                  style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                visualDensity: VisualDensity(vertical: 3),
                subtitle: Text(
                  "${notifications[index].description}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                trailing: Text(
                  "${notifications[index].date}",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        });
  }
}
