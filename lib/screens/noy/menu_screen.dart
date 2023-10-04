import 'package:flutter/material.dart';
import 'package:noy_kovcheg/widgets/kovcher_appbar.dart';

import '../../constants/const.dart';
import '../../models/noy_category.dart';

class MenuNoyScreen extends StatelessWidget {
  MenuNoyScreen({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarKovcheg(
        img: "assets/logo/noyfull.png",
        color: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 12,
              child: ListView.builder(
                itemCount: noyCategory.length,
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "${noyCategory[index].foodName}",
                                textAlign: TextAlign.center,
                                style: kCategoryScreenMenuText,
                              ),
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    '${noyCategory[index].imageAssets}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            Expanded(
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_up,
                    size: 25,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
