import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:noy_kovcheg/animations/fade_animation.dart';

import '../screens/noy/food_detail_noy.dart';

class ImageListView extends StatefulWidget {
  const ImageListView(
      {super.key, required this.startIndex, this.durection = 30});

  final int startIndex;

  final int durection;
  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();

    _scrollController.addListener(() {
      // Detect if is at the end
      if (_scrollController.position.atEdge) {
        _autoScroll();
      }
    });

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  _autoScroll() {
    final _currentScrollPosition = _scrollController.offset;
    final _scrollEndPosition = _scrollController.position.maxScrollExtent;

    scheduleMicrotask(() {
      _scrollController.animateTo(
        _currentScrollPosition == _scrollEndPosition ? 0 : _scrollEndPosition,
        duration: Duration(seconds: widget.durection),
        curve: Curves.linear,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      intervalStart: 0.5,
      child: Transform.rotate(
        angle: 1.96 * pi,
        child: SizedBox(
          height: 130,
          child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemExtent: 140,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return _ImageTile(
                    image:
                        'assets/noy/start_noy_img/${widget.startIndex + index}.png');
              }),
        ),
      ),
    );
  }
}

class _ImageTile extends StatelessWidget {
  const _ImageTile({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => FoodDetailNoy(
              image: image,
            ),
          ),
        );
      },
      child: Stack(children: [
        Positioned(
          top: 40,
          left: 15,
          child: Container(
            width: 100,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Hero(
          tag: image,
          child: Column(
            children: [
              Image.asset(
                image,
                width: 130,
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.3),
                ),
                child: Text(
                  "Популярное блюдо",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
