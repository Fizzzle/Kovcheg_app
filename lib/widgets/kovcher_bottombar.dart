import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class kovcher_bottomBar extends StatelessWidget {
  kovcher_bottomBar({
    super.key,
    this.currentIndex = 0,
  });

  int currentIndex;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        height: 50,
        // index: currentIndex,
        backgroundColor: Colors.grey.shade200,
        color: Colors.grey.shade300,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          }
          if (index == 1) {
            Navigator.pushNamed(context, '/favoritepage');
          }
        },
        items: [
          Icon(
            Icons.home,
            color: currentIndex == 0 ? Colors.indigo : Colors.black,
          ),
          Icon(
            Icons.favorite,
            color: currentIndex == 1 ? Colors.redAccent : Colors.black,
          ),
        ]);
  }
}
