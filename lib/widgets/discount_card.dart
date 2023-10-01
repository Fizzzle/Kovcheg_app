import 'package:flutter/material.dart';

import '../animations/fade_animation.dart';
import '../constants/const.dart';

class Discount_Card extends StatelessWidget {
  const Discount_Card({
    super.key,
    required this.title,
    required this.subtitle,
    this.black = true,
    required this.image,
    this.opacity = 0.3,
  });

  final dynamic title;
  final dynamic subtitle;
  final bool black;
  final dynamic image;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      intervalEnd: 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(opacity),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: black ? kH3TitleBlack : kH3Title,
                    ),
                    Text(
                      subtitle,
                      style: black ? kH3SubTitleBlack : kH3SubTitle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
