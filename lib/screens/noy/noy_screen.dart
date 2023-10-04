import 'package:flutter/material.dart';
import 'package:noy_kovcheg/animations/fade_animation.dart';
import 'package:noy_kovcheg/models/noy_category.dart';
import 'package:noy_kovcheg/screens/noy/menu_screen.dart';
import 'package:noy_kovcheg/widgets/discount_card.dart';
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
                    width: double.infinity,
                    height: 20,
                    child: ListView.builder(
                      itemCount: noyCategory.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) => Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "${noyCategory[index].foodName}",
                                textAlign: TextAlign.center,
                                style: kCategoryMenuText,
                              ),
                            ],
                          )),
                    ),
                  ),
                  Center(
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MenuNoyScreen(),
                          ),
                        );
                      },
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
                  noy_selection_title(title: "Советуем попробовать"),
                  SizedBox(
                    height: 20,
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
                        noy_recommendation_foods(
                          img: "assets/noy/noy_bluda/category/garniri.jpg",
                          price: "120грн",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        noy_recommendation_foods(
                          img: "assets/noy/noy_bluda/category/xolodnie.jpg",
                          price: "299грн",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  noy_selection_title(title: "Ближайщие мероприятия"),
                  SizedBox(
                    height: 20,
                  ),
                  Discount_Card(
                      title: "Живая музыка",
                      subtitle: "Каждую пятницу в 19.00",
                      image: "assets/noy/noy_bg_img/music.jpg"),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: double.infinity,
                      child: Text(
                        "Забронировать Стол",
                        textAlign: TextAlign.center,
                        style: kH3TitleBlack,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  noy_selection_title(title: "Новинки"),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: noy_recommendation_foods(
                      widthImg: 380,
                      img: "assets/noy/noy_bluda/category/desert.jpg",
                      price: "150грн",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        noy_recommendation_foods(
                          widthImg: 180,
                          img: "assets/noy/noy_bluda/category/goryachie.jpg",
                          price: "199грн",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        noy_recommendation_foods(
                          widthImg: 180,
                          img: "assets/noy/noy_bluda/category/pasta.jpg",
                          price: "299грн",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  noy_selection_title(title: "Напитки"),
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
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.05),
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
                    height: 140,
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

class noy_selection_title extends StatelessWidget {
  const noy_selection_title({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white38,
        ),
      ),
    );
  }
}

class noy_recommendation_foods extends StatelessWidget {
  const noy_recommendation_foods({
    super.key,
    this.widthImg = 200,
    required this.img,
    required this.price,
  });

  final double widthImg;
  final String img;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          SizedBox(
            width: 20,
          ),
          Container(
            width: widthImg,
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
                        img,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 125,
                      ),
                    ),
                    Positioned(right: 2, child: HeartIcon()),
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
                        height: 16,
                      ),
                      Center(
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white.withOpacity(0.1),
                            ),
                            child: Text(
                              price,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
