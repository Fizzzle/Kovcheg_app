import 'package:flutter/material.dart';
import 'package:noy_kovcheg/screens/noy_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kovcheg',
      theme: ThemeData.dark(),
      home: NoyScreen(),
    );
  }
}
