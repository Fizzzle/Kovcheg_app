import 'package:flutter/material.dart';
import 'package:noy_kovcheg/widgets/blur_container.dart';
import 'package:noy_kovcheg/widgets/image_list_view.dart';

import '../constants/const.dart';

class NoyScreen extends StatefulWidget {
  const NoyScreen({super.key});

  @override
  State<NoyScreen> createState() => _NoyScreenState();
}

class _NoyScreenState extends State<NoyScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  // БекГраунд
                  Image.asset(
                    'assets/noy/noy_bg_img/noy_bg_start.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 400,
                  ),
                  // Полосы картинок
                  Positioned.fill(
                    child: ShaderMask(
                      blendMode: BlendMode.dstOut,
                      shaderCallback: (rect) {
                        return LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black.withOpacity(0.5),
                              Colors.black.withOpacity(0.7),
                              Colors.black,
                            ],
                            stops: [
                              0,
                              0.62,
                              0.67,
                              0.85,
                              1,
                            ]).createShader(rect);
                      },
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            ImageListView(
                              startIndex: 1,
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            ImageListView(
                              startIndex: 10,
                              durection: 45,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Меню",
                          style: kH2Text,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Stack(
                        children: [
                          SizedBox(
                              height: 150,
                              width: double.infinity,
                              child: Image.asset(
                                "assets/noy/noy_bluda/rybne_plato.jpg",
                                fit: BoxFit.cover,
                              )),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Рыбное Плато",
                                  style: kH3TitleBlack,
                                ),
                                Text(
                                  "и со скидкой 10%",
                                  style: kH3SubTitleBlack,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.share_location_sharp),
              backgroundColor: Colors.black,
              label: "Noy",
              activeIcon: Icon(Icons.filter_tilt_shift_sharp)),
          BottomNavigationBarItem(
              icon: Icon(Icons.keyboard_option_key_sharp),
              backgroundColor: Colors.black,
              label: "Ostrov"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_city),
              backgroundColor: Colors.black,
              label: "Gorod"),
        ],
        currentIndex: index,
        unselectedItemColor: Colors.grey,
        backgroundColor: kprimaryColor.withOpacity(0.2),
        selectedItemColor: Colors.amber,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
    ;
  }
}
