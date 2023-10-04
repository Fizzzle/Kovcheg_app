import 'package:flutter/material.dart';
import 'package:noy_kovcheg/constants/const.dart';

import '../../widgets/kovcher_appbar.dart';
import '../../widgets/like_button.dart';

class OstrovRoomDetail extends StatefulWidget {
  const OstrovRoomDetail(
      {super.key,
      required this.image,
      required this.description,
      required this.name,
      this.isRoom = true});

  final String image;
  final String description;
  final String name;
  final bool isRoom;

  @override
  State<OstrovRoomDetail> createState() => _OstrovRoomDetailState();
}

class _OstrovRoomDetailState extends State<OstrovRoomDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.isRoom
          ? Color.fromARGB(255, 75, 148, 199)
          : Color.fromARGB(255, 179, 174, 185),
      appBar: AppBarKovcheg(
        img: "assets/logo/ostrovlogo.png",
        color: Color.fromARGB(250, 245, 198, 140),
      ),
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: widget.isRoom
                ? AssetImage('assets/ostrov/room/background.jpg')
                : AssetImage('assets/ostrov/ps5game/background.jpg'),
            fit: BoxFit.cover, // или другой тип заполнения, который вам нужен
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
                height: 300,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(children: [
              Positioned(
                bottom: -8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: 350,
                  height: 280,
                ),
              ),
              Positioned(
                bottom: -4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: 350,
                  height: 290,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: 350,
                height: 300,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.1),
                      ),
                      height: 50,
                      width: 300,
                      child: Text(
                        widget.name,
                        style: kH1TextBlack,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      child: SingleChildScrollView(
                        child: RichText(
                          text: TextSpan(
                              text: widget.description,
                              style: kH3SubTitleBlack),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        HeartIcon(),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
