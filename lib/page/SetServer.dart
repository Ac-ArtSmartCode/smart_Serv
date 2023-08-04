import 'package:flutter/material.dart';

import 'package:project/widgets/ListServerState.dart';

class SetServer extends StatefulWidget {
  const SetServer({super.key});

  @override
  State<SetServer> createState() => _SetServerState();
}

class _SetServerState extends State<SetServer> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "SERVER STATE ",
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
        Expanded(child: ListServerState())
      ],
    );
  }
}
