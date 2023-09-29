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
      body: Column(
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
                      width: 260,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.5),
                      ),
                      child: Text(
                        "Название",
                        style: TextStyle(
                          fontSize: 30,
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
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: FadeAnimation(
              intervalEnd: 0.9,
              child: Text(
                "Состав:",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
