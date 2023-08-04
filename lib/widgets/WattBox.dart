import 'package:flutter/material.dart';

class WattBox extends StatefulWidget {
  WattBox({super.key, this.value, this.watt});
  int? watt;
  int? value;

  @override
  State<WattBox> createState() => _WattBoxState();
}

class _WattBoxState extends State<WattBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      height: 80,
      width: 230,
      child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Watt",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Text("${widget.watt} w",
                  style: const TextStyle(
                    fontSize: 20,
                  ))
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Value",
                  style: TextStyle(
                    fontSize: 16,
                  )),
              Text("${widget.value} w")
            ],
          ),
          leading: Icon(
            Icons.power,
            size: 50,
            color: Colors.red.shade900,
          )),
    );
  }
}
