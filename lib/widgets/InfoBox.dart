import 'package:flutter/material.dart';

class InfoBox extends StatefulWidget {
  const InfoBox({super.key});

  @override
  State<InfoBox> createState() => _InfoBoxState();
}

class _InfoBoxState extends State<InfoBox> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5,
      child: Container(
          height: 180,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(163, 18, 87, 1),
              Color.fromRGBO(182, 45, 47, 1),
            ]),
          ),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "THANAPHAT",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "       KONG....",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "65309010013",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 2,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Server is running",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    "1 Devices",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Idle",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    "2 Devices",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Charges",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    "27/07/2023",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "2539.78 ฿",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          )),
    );
  }
}
