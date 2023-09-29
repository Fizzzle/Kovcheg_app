import 'package:flutter/material.dart';
import 'package:noy_kovcheg/animations/fade_animation.dart';
import 'package:noy_kovcheg/models/noy_category.dart';
import 'package:noy_kovcheg/widgets/image_list_view.dart';

import '../constants/const.dart';

class NoyScreen extends StatefulWidget {
  const NoyScreen({Key? key}) : super(key: key);

  @override
  State<NoyScreen> createState() => _NoyScreenState();
}

class _NoyScreenState extends State<NoyScreen> {
  List<NoyCategory> noyCategory = [
    NoyCategory(
      foodName: "Холодные закуски",
      imageAssets: "assets/noy/noy_bluda/category/xolodnie.jpg",
    ),
    NoyCategory(
        foodName: "Горячие закуски",
        imageAssets: "assets/noy/noy_bluda/category/goryachie.jpg"),
    NoyCategory(
        foodName: "Салаты",
        imageAssets: "assets/noy/noy_bluda/category/salad.jpg"),
    NoyCategory(
        foodName: "Супы", imageAssets: "assets/noy/noy_bluda/category/sup.jpg"),
    NoyCategory(
        foodName: "Паста",
        imageAssets: "assets/noy/noy_bluda/category/pasta.jpg"),
    NoyCategory(
        foodName: "Плато морских деликатесов",
        imageAssets: "assets/noy/noy_bluda/category/plato.jpg"),
    NoyCategory(
        foodName: "Морские деликатесы",
        imageAssets: "assets/noy/noy_bluda/category/morskie_delikotesi.jpg"),
    NoyCategory(
        foodName: "Хоспер",
        imageAssets: "assets/noy/noy_bluda/category/hosper.jpg"),
    NoyCategory(
        foodName: "Блюда на огне",
        imageAssets: "assets/noy/noy_bluda/category/na_ogne.jpg"),
    NoyCategory(
        foodName: "Ролы",
        imageAssets: "assets/noy/noy_bluda/category/roli.jpg"),
    NoyCategory(
        foodName: "Маки",
        imageAssets: "assets/noy/noy_bluda/category/maki.jpg"),
    NoyCategory(
        foodName: "Гарниры",
        imageAssets: "assets/noy/noy_bluda/category/garniri.jpg"),
    NoyCategory(
        foodName: "Десерты",
        imageAssets: "assets/noy/noy_bluda/category/desert.jpg"),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
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
                              Colors.black.withOpacity(0.2),
                              Colors.black.withOpacity(0.2),
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
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    _discountCard(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Категории",
                          style: kH2Text,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 140,
                      child: ListView.builder(
                        itemCount: noyCategory.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemExtent: 100,
                        itemBuilder: ((context, index) => Column(
                              children: [
                                SizedBox(
                                  height: 78,
                                  width: 78,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      '${noyCategory[index].imageAssets}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${noyCategory[index].foodName}",
                                  style: TextStyle(fontSize: 10),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )),
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
  }

  FadeAnimation _discountCard() {
    return FadeAnimation(
      intervalEnd: 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            SizedBox(
                height: 150,
                width: double.infinity,
                child: Image.asset(
                  "assets/noy/noy_bg_img/music.jpg",
                  fit: BoxFit.cover,
                )),
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
                      "Живая музыка",
                      style: kH3TitleBlack,
                    ),
                    Text(
                      "в эту субботу c 19.00",
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
