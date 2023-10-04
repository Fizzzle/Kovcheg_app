import 'package:flutter/material.dart';

class HeartIcon extends StatefulWidget {
  @override
  _HeartIconState createState() => _HeartIconState();
}

class _HeartIconState extends State<HeartIcon> {
  bool isFavorite = false;
  double iconSize = 30;

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      iconSize = 30;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _toggleFavorite();
      },
      child: AnimatedContainer(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: isFavorite
              ? Colors.white.withOpacity(0.3)
              : Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(isFavorite ? 10 : 20),
          boxShadow: [
            BoxShadow(
              color: isFavorite ? Colors.black12 : Colors.black45, // цвет тени
              offset: Offset(0, 2), // смещение тени относительно контейнера
              blurRadius: 6, // радиус размытия тени
            ),
          ],
        ),
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? Colors.red : Colors.black,
          size: iconSize,
          shadows: [
            BoxShadow(
              color: Colors.black45, // цвет тени
              offset: Offset(0, 2), // смещение тени относительно контейнера
              blurRadius: 6, // радиус размытия тени
            ),
          ],
        ),
      ),
    );
  }
}
