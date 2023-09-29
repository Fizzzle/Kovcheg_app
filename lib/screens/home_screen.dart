import 'package:flutter/material.dart';
import 'package:noy_kovcheg/animations/fade_animation.dart';
import 'package:noy_kovcheg/screens/noy_screen.dart';

import '../constants/const.dart';

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
      body: SafeArea(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.green.withOpacity(0.2),
                      Colors.black.withOpacity(0.2),
                      Colors.grey.withOpacity(0.2),
                      Colors.white.withOpacity(0.2),
                      Colors.amber.withOpacity(0.2),
                      Colors.yellow.withOpacity(0.2),
                    ],
                    begin: _topAlignmentAnimation.value,
                    end: _bottomAlignmentAnimation.value,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Text(
                          "Выбери свой этаж",
                          style: kH2Text,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                        intervalEnd: 0.5,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NoyScreen(),
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
                                    offset: Offset(0,
                                        2), // смещение тени относительно контейнера
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
                                image:
                                    AssetImage("assets/logo/kovcheglogo.png"),
                                height: 60,
                              ),
                            ),
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "5 этаж 12.00 - 23.00 | Есть генератор",
                            style: kSpanHome,
                          ),
                          Icon(
                            Icons.electric_bolt,
                            color: Colors.yellow,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                        intervalEnd: 0.7,
                        child: GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/home_img/ostrov.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45, // цвет тени
                                  offset: Offset(0,
                                      2), // смещение тени относительно контейнера
                                  blurRadius: 6, // радиус размытия тени
                                ),
                              ],
                            ),
                            height: 180,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "3 этаж 10.00 - 22.00 | Есть генератор",
                            style: kSpanHome,
                          ),
                          Icon(
                            Icons.electric_bolt,
                            color: Colors.yellow,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                        intervalEnd: 0.9,
                        child: GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/home_img/gorod.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45, // цвет тени
                                  offset: Offset(0,
                                      2), // смещение тени относительно контейнера
                                  blurRadius: 6, // радиус размытия тени
                                ),
                              ],
                            ),
                            height: 180,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "2 этаж 12.00 - 22.00 | Есть генератор",
                            style: kSpanHome,
                          ),
                          Icon(
                            Icons.electric_bolt,
                            color: Colors.yellow,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
