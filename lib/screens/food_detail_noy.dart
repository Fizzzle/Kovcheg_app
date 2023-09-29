import 'package:flutter/material.dart';
import 'package:noy_kovcheg/animations/fade_animation.dart';
import 'package:noy_kovcheg/widgets/blur_container.dart';

import '../constants/const.dart';

class FoodDetailNoy extends StatelessWidget {
  const FoodDetailNoy({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Image.asset(
                  'assets/logo/noyfull.png',
                  height: 80,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Супер Блюдо от повара",
                  style: kH1TextBlack,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      "₴ ",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.orange[900],
                          shadows: [
                            Shadow(
                              offset: Offset(2.0,
                                  2.0), // смещение тени по горизонтали и вертикали
                              blurRadius: 3.0, // радиус размытия тени
                              color: Colors.black26,
                            )
                          ]),
                    ),
                    Text(
                      "300",
                      style: kPriceDetail,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  BlurContainer(
                    child: Container(
                      width: 400,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Colors.grey.withOpacity(0.15),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    bottom: -20,
                    child: Hero(
                      tag: image,
                      child: Image.asset(
                        image,
                        height: 300,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Вес блюда:",
                          style: TextStyle(fontSize: 14, color: Colors.black45),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "300 гр.",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          "Время:",
                          style: TextStyle(fontSize: 14, color: Colors.black45),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "10 минут",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Состав:",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Лучшее для вас и вашей семьи, шеф трудился и день и ночь и еще полчаса",
                      style: TextStyle(color: Colors.black38, fontSize: 18),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
