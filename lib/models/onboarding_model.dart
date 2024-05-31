import 'package:flutter/material.dart';

class OnBoardingModel {
  final String img;
  final String text;
  final String desc;
  final Color bg;
  final Color button;

  OnBoardingModel({
    required this.img,
    required this.text,
    required this.desc,
    required this.bg,
    required this.button,
  });
}
final screens = [
  OnBoardingModel(
    img:"assets/images/intro_image1.png",
    text: "Boost Productivity",
    desc: "Elevate your productivity to new heights and grow with us",
    bg: Colors.white,
    button: const Color(0xff4756DF),
  ),
  OnBoardingModel(
    img: "assets/images/intro_image2.png",
    text: "Work Seamlessly",
    desc: "Get your work done seamlessly without interruption",
    bg: Colors.white,
    button: const Color(0xff4756DF),
  ),
  OnBoardingModel(
    img: "assets/images/intro_image3.png",
    text: "Achieve Higher Goals",
    desc: "By boosting your productivity we help you achieve higher goals",
    bg: Colors.white,
    button: const Color(0xff4756DF),
  ),
];
