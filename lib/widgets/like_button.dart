import 'package:flutter/material.dart';

class HeartIcon extends StatefulWidget {
  double iconSize;
  double opacity;
  double opacityEnd;

  HeartIcon({
    super.key,
    this.iconSize = 30,
    this.opacity = 0.8,
    this.opacityEnd = 0.3,
  });
  @override
  _HeartIconState createState() => _HeartIconState();
}

class _HeartIconState extends State<HeartIcon> {
  bool isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
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
              ? Colors.white.withOpacity(widget.opacityEnd)
              : Colors.white.withOpacity(widget.opacity),
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
          size: widget.iconSize,
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
