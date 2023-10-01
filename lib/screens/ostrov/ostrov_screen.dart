import 'package:flutter/material.dart';

import '../../animations/fade_animation.dart';
import '../../constants/const.dart';
import '../../widgets/kovcher_appbar.dart';

class OstrovScreen extends StatefulWidget {
  const OstrovScreen({super.key});

  @override
  State<OstrovScreen> createState() => _OstrovScreenState();
}

class _OstrovScreenState extends State<OstrovScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarKovcheg(
        img: "assets/logo/ostrovlogo.png",
        color: Color.fromARGB(250, 245, 198, 140),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              _discount_card("Детсткий мир", "Полный игр"),
              SizedBox(
                height: 20,
              ),
              _discount_card("PS5", "Лучшие новинки"),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  FadeAnimation _discount_card(title, subtitle) {
    return FadeAnimation(
      intervalEnd: 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.pinkAccent,
              child: Image.asset(
                "assets/ostrov/card/ostrov_background.jpg",
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
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: kH3TitleBlack,
                    ),
                    Text(
                      subtitle,
                      style: kH3SubTitleBlack,
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
