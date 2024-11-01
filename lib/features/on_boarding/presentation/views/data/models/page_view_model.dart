import 'package:flutter/material.dart';

class PageViewModel {
  final String image;
  final String backgroundImage;
  final Widget title;
  final String subTitle;
  final bool isVisible;

  PageViewModel({
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subTitle,
    required this.isVisible,
  });
}
