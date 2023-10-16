import 'package:flutter/material.dart';

import '../animations/fade_animation.dart';
import '../constants/const.dart';

class Discount_Card extends StatelessWidget {
  const Discount_Card({
    super.key,
    this.title,
    this.subtitle,
    this.black = true,
    required this.image,
    this.opacity = 0.3,
    this.textContainer = true,
    this.borderRadius = 0,
    this.radiusEgle = 16,
  });

  final double radiusEgle;
  final int borderRadius;
  final bool textContainer;
  final dynamic title;
  final dynamic subtitle;
  final bool black;
  final dynamic image;
  final double opacity;

  BorderRadius border(borderRadius) {
    if (borderRadius == 1) {
      return BorderRadius.only(
        topLeft: Radius.circular(radiusEgle),
        bottomLeft: Radius.circular(radiusEgle),
      );
    } else if (borderRadius == 2) {
      return BorderRadius.only(
        topRight: Radius.circular(radiusEgle),
        bottomRight: Radius.circular(radiusEgle),
      );
    } else {
      return BorderRadius.circular(radiusEgle);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      intervalEnd: 0.7,
      child: ClipRRect(
        borderRadius: border(borderRadius),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              height: 150,
              width: double.infinity,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            textContainer
                ? Padding(
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
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
