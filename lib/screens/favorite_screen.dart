import 'package:flutter/material.dart';
import 'package:noy_kovcheg/constants/const.dart';
import 'package:noy_kovcheg/widgets/kovcher_appbar.dart';
import 'package:noy_kovcheg/widgets/kovcher_bottombar.dart';

class FavoriteScreens extends StatefulWidget {
  const FavoriteScreens({super.key});

  @override
  State<FavoriteScreens> createState() => _FavoriteScreensState();
}

class _FavoriteScreensState extends State<FavoriteScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarKovcheg(
        img: "assets/logo/gorodlogo.png",
        color: Color.fromARGB(255, 229, 106, 106),
      ),
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: kovcher_bottomBar(currentIndex: 1),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(
              child: Text(
                "Ваше самое любимое:",
                style: kH3TitleBlack,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
