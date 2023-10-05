import 'package:flutter/material.dart';

import '../../widgets/like_button.dart';

class Gorod_popular_foods extends StatelessWidget {
  const Gorod_popular_foods({
    super.key,
    this.widthImg = 200,
    required this.img,
    required this.price,
    required this.timer,
  });

  final double widthImg;
  final String img;
  final String price;
  final String timer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: widthImg,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12, // цвет тени
                  offset: Offset(0, 2), // смещение тени относительно контейнера
                  blurRadius: 6, // радиус размытия тени
                ),
              ],
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
                        height: 100,
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
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timelapse,
                                color: Colors.orange[900],
                                size: 16,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                timer,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Colors.orange[900],
                                size: 16,
                              ),
                              Text(
                                price,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
