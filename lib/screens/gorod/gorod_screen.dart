import 'package:flutter/material.dart';
import 'package:noy_kovcheg/widgets/kovcher_appbar.dart';

class GorodScreen extends StatefulWidget {
  const GorodScreen({super.key});

  @override
  State<GorodScreen> createState() => _GorodScreenState();
}

class _GorodScreenState extends State<GorodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarKovcheg(
        img: "assets/logo/gorodlogo.png",
        color: Color.fromARGB(255, 229, 106, 106),
      ),
    );
  }
}
