import 'package:flutter/material.dart';
import 'package:noy_kovcheg/animations/fade_animation.dart';
import 'package:noy_kovcheg/screens/noy/noy_screen.dart';

import '../constants/const.dart';
import '../models/vertical_home_page.dart';
import 'gorod/gorod_screen.dart';
import 'ostrov/ostrov_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _topAlignmentAnimation;
  late Animation<Alignment> _bottomAlignmentAnimation;

  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 24));
    _topAlignmentAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem(
            tween: Tween<Alignment>(
                begin: Alignment.topLeft, end: Alignment.topRight),
            weight: 1),
        TweenSequenceItem(
            tween: Tween<Alignment>(
                begin: Alignment.topRight, end: Alignment.bottomRight),
            weight: 1),
        TweenSequenceItem(
            tween: Tween<Alignment>(
                begin: Alignment.bottomRight, end: Alignment.bottomLeft),
            weight: 1),
        TweenSequenceItem(
            tween: Tween<Alignment>(
                begin: Alignment.bottomLeft, end: Alignment.topLeft),
            weight: 1),
      ],
    ).animate(_controller);

    _bottomAlignmentAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem(
            tween: Tween<Alignment>(
                begin: Alignment.bottomLeft, end: Alignment.bottomRight),
            weight: 1),
        TweenSequenceItem(
            tween: Tween<Alignment>(
                begin: Alignment.bottomRight, end: Alignment.topLeft),
            weight: 1),
        TweenSequenceItem(
            tween: Tween<Alignment>(
                begin: Alignment.topLeft, end: Alignment.topRight),
            weight: 1),
        TweenSequenceItem(
            tween: Tween<Alignment>(
                begin: Alignment.topRight, end: Alignment.bottomRight),
            weight: 1),
      ],
    ).animate(_controller);

    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerticalHomePages(),
    );
  }

  FadeAnimation ostrov_home(BuildContext context, linkScreen) {
    return FadeAnimation(
      intervalEnd: 0.7,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => linkScreen,
            ),
          );
        },
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/home_img/ostrov.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45, // цвет тени
                  offset: Offset(0, 2), // смещение тени относительно контейнера
                  blurRadius: 6, // радиус размытия тени
                ),
              ],
            ),
            height: 180,
            width: double.infinity,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image(
              image: AssetImage("assets/logo/kovcheglogo.png"),
              height: 60,
            ),
          ),
        ]),
      ),
    );
  }

  FadeAnimation noy_home(BuildContext context, linkScreen) {
    return FadeAnimation(
      intervalEnd: 0.5,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => linkScreen,
            ),
          );
        },
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/home_img/noy.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45, // цвет тени
                  offset: Offset(0, 2), // смещение тени относительно контейнера
                  blurRadius: 6, // радиус размытия тени
                ),
              ],
            ),
            height: 180,
            width: double.infinity,
          ),
          Positioned(
            top: 0,
            child: Image(
              image: AssetImage("assets/logo/kovcheglogo.png"),
              height: 60,
            ),
          ),
        ]),
      ),
    );
  }

  FadeAnimation gorod_home(BuildContext context, linkScreen) {
    return FadeAnimation(
      intervalEnd: 0.9,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => linkScreen,
            ),
          );
        },
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/home_img/gorod.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45, // цвет тени
                  offset: Offset(0, 2), // смещение тени относительно контейнера
                  blurRadius: 6, // радиус размытия тени
                ),
              ],
            ),
            height: 180,
            width: double.infinity,
          ),
          Positioned(
            top: 0,
            child: Image(
              image: AssetImage("assets/logo/kovcheglogo.png"),
              height: 60,
            ),
          ),
        ]),
      ),
    );
  }
}
