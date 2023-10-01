import 'package:flutter/material.dart';
import 'package:noy_kovcheg/widgets/kovcher_appbar.dart';

import '../../widgets/discount_card.dart';

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Discount_Card(
                  opacity: 0.7,
                  title: "Вечер Кино",
                  subtitle: "Каждый день с 19:30",
                  image: "assets/gorod/card/movie.jpg"),
              SizedBox(
                height: 20,
              ),
              Discount_Card(
                  opacity: 0.5,
                  title: "Трать баллы",
                  subtitle: "Выбирай трансляцию или фильм",
                  image: "assets/gorod/card/filmTrans.jpg"),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
