import 'package:flutter/material.dart';

import '../../widgets/like_button.dart';

class Gorod_recomendation_card extends StatelessWidget {
  const Gorod_recomendation_card({
    super.key,
    required this.img,
    required this.name,
    required this.weight,
    required this.price,
  });

  final String img;
  final String name;
  final String weight;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(
                img,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 100,
              ),
            ),
            Positioned(
              right: 3,
              child: HeartIcon(
                iconSize: 16,
                opacity: 0.5,
                opacityEnd: 0.1,
              ),
            ),
          ]),
          Text(name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )),
          Text(weight,
              style: TextStyle(
                color: Colors.black45,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              )),
          Text(price,
              style: TextStyle(
                color: Colors.orange[900],
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
