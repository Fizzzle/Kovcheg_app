import 'package:flutter/material.dart';
import 'package:noy_kovcheg/widgets/kovcher_appbar.dart';

import '../../widgets/kovcher_bottombar.dart';
import 'models/gorod_popular_food.dart';

class Gorod_Category_Screen extends StatelessWidget {
  const Gorod_Category_Screen({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarKovcheg(
        img: "assets/logo/gorodlogo.png",
        color: Color.fromARGB(255, 229, 106, 106),
        title: true,
        titleText: name,
      ),
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: kovcher_bottomBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  children: [
                    Gorod_popular_foods(
                        img: 'assets/noy/noy_bluda/category/garniri.jpg',
                        price: '200',
                        timer: "20мин"),
                    Gorod_popular_foods(
                        img: 'assets/noy/noy_bluda/category/garniri.jpg',
                        price: '200',
                        timer: "20мин"),
                    Gorod_popular_foods(
                        img: 'assets/noy/noy_bluda/category/garniri.jpg',
                        price: '200',
                        timer: "20мин"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
