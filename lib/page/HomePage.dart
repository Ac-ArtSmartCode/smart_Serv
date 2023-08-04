import 'package:flutter/material.dart';
import 'package:project/widgets/Analytics.dart';
import 'package:project/widgets/ImageSlider.dart';
import 'package:project/widgets/InfoBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Column(
        children: [InfoBox(), ImageSlider(), Analytics()],
      ),
    );
  }
}
