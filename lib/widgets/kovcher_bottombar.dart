import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class kovcher_bottomBar extends StatelessWidget {
  const kovcher_bottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.grey.shade200,
        color: Colors.grey.shade300,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {},
        items: [
          Icon(
            Icons.home,
            color: Colors.black,
          ),
          Icon(
            Icons.favorite,
            color: Colors.black,
          ),
        ]);
  }
}
