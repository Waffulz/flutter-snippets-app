import 'package:flutter/material.dart';
import 'package:snippets/globals/exports.dart';

class SwitchThemeButton extends StatefulWidget {
  @override
  _SwitchThemeButtonState createState() => _SwitchThemeButtonState();
}

class _SwitchThemeButtonState extends State<SwitchThemeButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          gradient: GradientTheme.pink(),
          borderRadius: BorderRadius.circular(25),
          boxShadow: CustomShadow.getSwtchThemeShadow(pinkMedium.withOpacity(0.3))
      ),
    );
  }
}
