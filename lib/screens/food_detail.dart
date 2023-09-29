import 'package:flutter/material.dart';
import 'package:noy_kovcheg/animations/fade_animation.dart';
import 'package:noy_kovcheg/widgets/blur_container.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                FadeAnimation(
                  intervalEnd: 0.4,
                  child: Hero(
                    tag: image,
                    child: Image.asset(image),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: FadeAnimation(
                    intervalEnd: 0.6,
                    child: BlurContainer(
                      child: Container(
                        width: 100,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.5),
                        ),
                        child: Text(
                          "195₴",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Название",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "300грамм",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                  SizedBox(
                    height: 20,
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
    );
  }
}
