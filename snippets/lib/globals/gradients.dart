import 'package:flutter/material.dart';
import 'colors.dart';

class GradientTheme {

  static LinearGradient getGradient(Color soft, Color hard, Alignment begin, Alignment end) {

    Alignment defaultStart = Alignment.topLeft;
    Alignment defaultEnd = Alignment.bottomRight;

    return LinearGradient(
      colors: [
        soft,
        hard
      ],
      begin: begin != null ? begin : defaultStart,
      end: begin != null ? end : defaultEnd
    );
  }

  static LinearGradient purple() {
    return getGradient(purpleSoft, purpleHard, null, null);
  }

  static LinearGradient pink() {
    return getGradient(pinkSoft, pinkHard, null, null);
  }

  static LinearGradient violet() {
    return getGradient(violetSoft, violetHard, null, null);
  }

  static LinearGradient yellow() {
    return getGradient(yellowSoft, yellowHard, null, null);
  }

  static LinearGradient blue() {
    return getGradient(blueSoft, blueHard, null, null);
  }

  static LinearGradient green() {
    return getGradient(greenSoft, greenHard, null, null);
  }

  static LinearGradient peach() {
    return getGradient(peachSoft, peachHard, null, null);
  }


}
