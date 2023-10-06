import 'package:flutter/material.dart';
import 'package:noy_kovcheg/constants/const.dart';
import 'package:noy_kovcheg/new_icons_icons.dart';
import 'package:noy_kovcheg/widgets/kovcher_appbar.dart';

import '../../widgets/kovcher_bottombar.dart';
import 'gorod_category_screen.dart';
import 'models/gorod_popular_food.dart';
import 'models/gorod_recommendation_food.dart';

class GorodScreen extends StatefulWidget {
  const GorodScreen({super.key});

  @override
  State<GorodScreen> createState() => _GorodScreenState();
}

class _GorodScreenState extends State<GorodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarKovcheg(
        img: "assets/logo/gorodlogo.png",
        color: Color.fromARGB(255, 229, 106, 106),
      ),
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: kovcher_bottomBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.orange[900],
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "20",
                                style: kH2Text,
                              ),
                              Text(
                                "%",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Попробуй зимную \nновинку",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Попробуй новинку',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/noy/start_noy_img/5.png",
                        width: 170,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.orange[900],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(New_icons.fast_food),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Бургеры",
                          style: TextStyle(
                            color: Colors.orange[900],
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    category_food(
                        New_icons
                            .free_icon_food_and_restaurant_mega_pack_color_9163164,
                        "Горячее"),
                    SizedBox(
                      width: 10,
                    ),
                    category_food(New_icons.food_chain, "Ролы"),
                    SizedBox(
                      width: 10,
                    ),
                    category_food(
                        New_icons.free_icon_food_delivery_2827606, "Пицца"),
                    SizedBox(
                      width: 10,
                    ),
                    category_food(
                        New_icons.free_icon_cocktail_754363, "Коктейли"),
                    SizedBox(
                      width: 10,
                    ),
                    category_food(
                        New_icons.free_icon_milkshake_7441492, "Милк Шейки"),
                    SizedBox(
                      width: 10,
                    ),
                    category_food(
                        New_icons.free_icon_water_bottle_7842880, "Вода"),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              gorod_title_category(title: "Популярные блюда"),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 190,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  SizedBox(
                    width: 20,
                  ),
                  Gorod_popular_foods(
                      img: 'assets/noy/noy_bluda/category/garniri.jpg',
                      price: '200',
                      timer: "20мин"),
                  SizedBox(
                    width: 20,
                  ),
                  Gorod_popular_foods(
                      img: 'assets/noy/noy_bluda/category/hosper.jpg',
                      price: '320',
                      timer: "60мин"),
                  SizedBox(
                    width: 20,
                  ),
                  Gorod_popular_foods(
                      img: 'assets/noy/noy_bluda/category/set_rolov.jpg',
                      price: '100',
                      timer: "30мин"),
                  SizedBox(
                    width: 20,
                  ),
                ]),
              ),
              gorod_title_category(title: "Рекомендуем"),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 190,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  SizedBox(
                    width: 20,
                  ),
                  Gorod_recomendation_card(
                    img: "assets/noy/noy_bluda/category/hosper.jpg",
                    name: "Дикая доска",
                    weight: "300гр",
                    price: "200грн",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Gorod_recomendation_card(
                    img: "assets/noy/noy_bluda/category/desert.jpg",
                    name: "Сладкая Бомба",
                    weight: "150гр",
                    price: "100грн",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Gorod_recomendation_card(
                    img: "assets/noy/noy_bluda/category/set_rolov.jpg",
                    name: "Сет Ролов",
                    weight: "500гр",
                    price: "360грн",
                  ),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              gorod_title_category(title: "Напитки"),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column category_food(icon, name) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(icon),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class gorod_title_category extends StatelessWidget {
  const gorod_title_category({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                shadows: [
                  Shadow(
                    offset: Offset(
                        2.0, 2.0), // смещение тени по горизонтали и вертикали
                    blurRadius: 3.0, // радиус размытия тени
                    color: Colors.black12,
                  )
                ]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Gorod_Category_Screen(
                    name: title,
                  ),
                ),
              );
            },
            child: Text(
              "посмотреть все",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: Colors.orange[900],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
