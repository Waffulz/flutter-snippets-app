import 'package:flutter/material.dart';
import 'package:snippets/globals/exports.dart';

class SwitchThemeButton extends StatefulWidget {
  final bool isFilled;
  SwitchThemeButton(this.isFilled);
  @override
  _SwitchThemeButtonState createState() => _SwitchThemeButtonState();
}

class _SwitchThemeButtonState extends State<SwitchThemeButton> {

  @override
  Widget build(BuildContext context) {

    BoxDecoration defaultStyle = BoxDecoration(
        gradient: GradientTheme.pink(),
        borderRadius: BorderRadius.circular(25),
        boxShadow: CustomShadow.getSwtchThemeShadow(pinkMedium.withOpacity(0.3))
    );

        BoxDecoration filledStyle = BoxDecoration(
        gradient: GradientTheme.pink(),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: white, width: 2)
    );

    return Container(
      height: 25,
      width: 25,
      decoration: widget.isFilled ? filledStyle : defaultStyle
    );
  }



}
