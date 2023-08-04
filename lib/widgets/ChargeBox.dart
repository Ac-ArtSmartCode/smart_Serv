import 'package:flutter/material.dart';

class ChargesBox extends StatefulWidget {
  ChargesBox({super.key, required this.charge});
  double charge;

  @override
  State<ChargesBox> createState() => _ChargesBoxState();
}

class _ChargesBoxState extends State<ChargesBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.red.shade900, borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: const Icon(
          Icons.trending_up_rounded,
          size: 50,
          color: Colors.white,
        ),
        title: const Text(
          "Charges",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "${widget.charge}฿",
          style: const TextStyle(
              color: Colors.white, fontSize: 18, letterSpacing: 1.5),
        ),
      ),
    );
  }
}
