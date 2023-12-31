import 'package:flutter/material.dart';

Color kprimaryColor = Color(0xff76805e);

// NOY CATEGORY
TextStyle kCategoryMenuText = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  fontFamily: "Comfortaa",
);

TextStyle kCategoryScreenMenuText = TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Comfortaa");

// Text
TextStyle kH2Text = TextStyle(fontSize: 28, fontFamily: "Comfortaa");
TextStyle kH1TextBlack = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    fontFamily: "Comfortaa",
    color: Colors.black,
    shadows: [
      Shadow(
        offset: Offset(2.0, 2.0), // смещение тени по горизонтали и вертикали
        blurRadius: 3.0, // радиус размытия тени
        color: Colors.black12,
      )
    ]);

TextStyle kPriceDetail = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.w900,
    fontFamily: "Comfortaa",
    color: Colors.orange[900],
    shadows: [
      Shadow(
        offset: Offset(2.0, 2.0), // смещение тени по горизонтали и вертикали
        blurRadius: 3.0, // радиус размытия тени
        color: Colors.black26,
      )
    ]);

TextStyle kH3TitleBlack = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: "Comfortaa",
    color: Colors.black);
TextStyle kH3SubTitleBlack = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: "Comfortaa",
    color: Colors.black);

TextStyle kH3Title = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: "Comfortaa",
    color: Colors.white);
TextStyle kH3SubTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: "Comfortaa",
    color: Colors.white);

TextStyle kSpanHome = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: "Comfortaa",
    color: Colors.orange[900]);
