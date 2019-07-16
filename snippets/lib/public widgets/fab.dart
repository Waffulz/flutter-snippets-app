import 'package:flutter/material.dart';
import 'package:snippets/globals/exports.dart';

Widget SnippetsFab(VoidCallback onPressed) {

  var assetImage = AssetImage('assets/snipzie_white.png');
  var snipzie = Image(image: assetImage, height: 30, width: 30, fit: BoxFit.contain);

  return GestureDetector(
    onTap: onPressed,
    child: Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        gradient: GradientTheme.purple(),
        borderRadius: BorderRadius.circular(50),
        boxShadow: CustomShadow.getFabShadow(purpleMedium.withOpacity(0.5))
      ),
      child: Center(
        child: snipzie,
      ),
    ),
  );
}
