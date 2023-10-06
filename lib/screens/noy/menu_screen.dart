import 'package:flutter/material.dart';
import 'package:noy_kovcheg/screens/noy/noy_category_screen.dart';
import 'package:noy_kovcheg/widgets/kovcher_appbar.dart';

import '../../constants/const.dart';
import '../../models/noy_category.dart';
import 'noyList/noyCategory.dart';

class MenuNoyScreen extends StatelessWidget {
  MenuNoyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarKovcheg(
        img: "assets/logo/noyfull.png",
        color: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 12,
              child: ListView.builder(
                itemCount: noyCategory.length,
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => NoyCategoryScreen(),
                                ),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "${noyCategory[index].foodName}",
                                  textAlign: TextAlign.center,
                                  style: kCategoryScreenMenuText,
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      '${noyCategory[index].imageAssets}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            Expanded(
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_up,
                    size: 25,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
