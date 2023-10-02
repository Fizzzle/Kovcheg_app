import 'package:flutter/material.dart';
import 'package:noy_kovcheg/animations/fade_animation.dart';
import 'package:noy_kovcheg/models/noy_category.dart';
import 'package:noy_kovcheg/widgets/image_list_view.dart';

import '../../constants/const.dart';
import '../../widgets/kovcher_appbar.dart';
import '../../widgets/like_button.dart';

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
      appBar: AppBarKovcheg(
        img: "assets/logo/noyfull.png",
        color: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              oldStartNoy(),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    width: double.infinity,
                    height: 20,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Text(
                          "Горячие закуски",
                          textAlign: TextAlign.center,
                          style: kCategoryMenuText,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Холодные закуски",
                          textAlign: TextAlign.center,
                          style: kCategoryMenuText,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Кофе",
                          textAlign: TextAlign.center,
                          style: kCategoryMenuText,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Салат",
                          textAlign: TextAlign.center,
                          style: kCategoryMenuText,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Советуем попробовать",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white38,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 240,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      "assets/noy/noy_bluda/category/desert.jpg",
                                      fit: BoxFit.cover,
                                      height: 125,
                                    ),
                                  ),
                                  HeartIcon(),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Название",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 30,
                                      child: Text(
                                        "Яйцо, курица, курица, яйцо, зелень, капуста, сметана, сметана, сметана, сметана",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.white38,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color:
                                                Colors.white.withOpacity(0.1),
                                          ),
                                          child: Text("299грн")),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Stack oldStartNoy() {
    return Stack(
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
                    height: 70,
                  ),
                  FadeAnimation(
                    intervalStart: 0.1,
                    child: ImageListView(
                      startIndex: 1,
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
