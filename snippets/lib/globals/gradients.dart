import 'package:flutter/material.dart';
import 'colors.dart';

class GradientTheme {

  static LinearGradient _getLinearGradient(Color soft, Color hard, Alignment begin, Alignment end) {

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
    return _getLinearGradient(purpleSoft, purpleHard, null, null);
  }

  static LinearGradient pink() {
    return _getLinearGradient(pinkSoft, pinkHard, null, null);
  }

  static LinearGradient violet() {
    return _getLinearGradient(violetSoft, violetHard, null, null);
  }

  static LinearGradient yellow() {
    return _getLinearGradient(yellowSoft, yellowHard, null, null);
  }

  static LinearGradient blue() {
    return _getLinearGradient(blueSoft, blueHard, null, null);
  }


}
