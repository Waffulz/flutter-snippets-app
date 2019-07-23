import 'package:flutter/material.dart';

class CustomShadow{

  static List<BoxShadow> getFabShadow(Color color) {
    var customShadow = [
      BoxShadow(
        color: color,
        blurRadius: 12.0,
        spreadRadius: 1.0,
        offset: Offset(
          1.0, // horizontal, move right 10
          6.0, // vertical, move down 10
        ),
      )
    ];
    return customShadow;
  }

  static List<BoxShadow> getCircularShadow(Color color) {
    var customShadow = [
      BoxShadow(
        color: color,
        blurRadius: 30.0,
        spreadRadius: 1.0,
        offset: Offset(
          0.0, // horizontal, move right 10
          0.0, // vertical, move down 10
        ),
      )
    ];
    return customShadow;
  }

  static List<BoxShadow> getSwtchThemeShadow(Color color) {
    var customShadow = [
      BoxShadow(
        color: color,
        blurRadius: 12.0,
        spreadRadius: 1.0,
        offset: Offset(
          1.0, // horizontal, move right 10
          6.0, // vertical, move down 10
        ),
      )
    ];
    return customShadow;
  }

}
