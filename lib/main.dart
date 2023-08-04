import 'package:flutter/material.dart';
import 'package:project/page/ChartServe.dart';
import 'package:project/page/HomePage.dart';
import 'package:project/page/NotificationPage.dart';
import 'package:project/page/ServerLog.dart';
import 'package:project/page/SetServer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyPage());
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    SetServer(),
    NotificationPage(),
    ServerLog(),
    ChartServe()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hi! THANAPHAT",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: 50,
              width: 50,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 24,
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/image/profile.jpg'),
                ),
              ),
            ),
          ),
        ],
        backgroundColor: const Color.fromRGBO(18, 21, 28, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: _children[currentIndex],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(1),
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(182, 45, 47, 1),
                Color.fromRGBO(163, 18, 87, 1)
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              stops: [0.0, 1],
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.all(Radius.circular(17))),
        child: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          elevation: 0,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(
                  Icons.home_filled,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.settings_input_component),
                label: "STATE"),
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.notifications_active_rounded),
                label: "NOTIFICATION"),
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.schema_rounded),
                label: "SERVER"),
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.track_changes),
                label: "ANALYTICS"),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(18, 21, 28, 1),
    );
  }
}
