import 'package:flutter/material.dart';
import 'package:project/page/ServerList.dart';

class ServerLog extends StatefulWidget {
  const ServerLog({super.key});

  @override
  State<ServerLog> createState() => _ServerLogState();
}

class _ServerLogState extends State<ServerLog> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "SERVER STATUS",
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
        Expanded(child: ServerList())
      ],
    );
  }
}
