import "package:flutter/material.dart";
import "package:noy_kovcheg/widgets/kovcher_appbar.dart";

import "../../constants/const.dart";
import "menu_screen.dart";
import "noyList/noyCategory.dart";
import "noy_screen.dart";

class NoyCategoryScreen extends StatelessWidget {
  const NoyCategoryScreen({super.key});

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
              SizedBox(
                height: 20,
              ),
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
              GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 20),
                shrinkWrap: true,
                crossAxisCount: 2,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 0.75,
                children: [
                  noy_recommendation_foods(
                    widthImg: 180,
                    img: "assets/noy/noy_bluda/category/goryachie.jpg",
                    price: "199грн",
                  ),
                  noy_recommendation_foods(
                    widthImg: 180,
                    img: "assets/noy/noy_bluda/category/goryachie.jpg",
                    price: "199грн",
                  ),
                  noy_recommendation_foods(
                    widthImg: 180,
                    img: "assets/noy/noy_bluda/category/goryachie.jpg",
                    price: "199грн",
                  ),
                  noy_recommendation_foods(
                    widthImg: 180,
                    img: "assets/noy/noy_bluda/category/goryachie.jpg",
                    price: "199грн",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
