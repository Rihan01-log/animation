import 'package:flutter/material.dart';

class AnimationPro extends ChangeNotifier {
  late AnimationController controller;
  late Animation<double> animation;

  void initAnimation(TickerProvider vsync) {
    controller =
        AnimationController(vsync: vsync, duration: Duration(milliseconds: 800))
          ..forward();
    animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut));
    notifyListeners();
  }
}
