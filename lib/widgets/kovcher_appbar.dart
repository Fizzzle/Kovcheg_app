import 'package:flutter/material.dart';

class AppBarKovcheg extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String img;
  final Color color;

  AppBarKovcheg({Key? key, required this.img, required this.color})
      : preferredSize = const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.withOpacity(0.1),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: color,
          size: 25,
        ),
        onPressed: () {
          Navigator.of(context)
              .pop(); // При нажатии на кнопку "назад" будет выполнен возврат на предыдущий экран
        },
      ),
      title: Image.asset(
        img,
        height: 40,
      ),
      centerTitle: true,
    );
  }
}
