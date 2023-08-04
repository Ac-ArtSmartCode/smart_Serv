import 'package:flutter/material.dart';
import 'package:project/widgets/NotificationBox.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "NOTIFICATION",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.notifications_active_rounded,
              size: 30,
              color: Colors.white,
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
        Expanded(child: NotificationBox())
      ],
    );
  }
}
