import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

import '../constants/const.dart';
import '../screens/gorod/gorod_screen.dart';
import '../screens/noy/noy_screen.dart';
import '../screens/ostrov/ostrov_screen.dart';

class VerticalHomePages extends StatefulWidget {
  const VerticalHomePages({super.key});

  @override
  State<VerticalHomePages> createState() => _VerticalHomePagesState();
}

class _VerticalHomePagesState extends State<VerticalHomePages> {
  late String texting = timeWork[2];
  late String img = 'assets/home_img/background.jpg';

  final List<String> titles = [
    "",
    "",
    "",
  ];

  final List<String> timeWork = [
    "5 этаж 12.00 - 23.00 | Есть генератор",
    "3 этаж 11.00 - 22.00 | Есть генератор",
    "2 этаж 12.00 - 22.00 | Есть генератор",
  ];

  final List<String> imageList = [
    'assets/home_img/noy.png',
    'assets/home_img/ostrov.jpg',
    'assets/home_img/gorod.jpg',
  ];

  final List<String> backImgList = [
    'assets/home_img/background.jpg',
    'assets/home_img/snim2.jpg',
    'assets/home_img/snim3.jpg',
  ];

  final List<dynamic> pages = [
    NoyScreen(),
    OstrovScreen(),
    GorodScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> images = imageList.map((image) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black45,
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.dstATop),
                image: AssetImage(image))),
      );
    }).toList();

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop),
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
              Expanded(
                flex: 14,
                child: VerticalCardPager(
                  onPageChanged: (index) {
                    setState(() {
                      switch (index) {
                        case 0:
                          setState(() {
                            texting = timeWork[0];
                            img = backImgList[0];
                          });
                          break;
                        case 1:
                          setState(() {
                            texting = timeWork[1];
                            img = backImgList[1];
                          });
                          break;
                        case 2:
                          setState(() {
                            texting = timeWork[2];
                            img = backImgList[2];
                          });
                          break;
                      }
                    });
                  },
                  titles: titles,
                  images: images,
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  onSelectedItem: (index) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pages[index],
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (BuildContext context) {
                    return Text(
                      texting,
                      style: kSpanHome,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
