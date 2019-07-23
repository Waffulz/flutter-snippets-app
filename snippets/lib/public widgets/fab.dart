import 'package:flutter/material.dart';
import 'package:snippets/globals/exports.dart';

Widget snippetsFab(VoidCallback onPressed, bool isFilled) {

  var assetImage = isFilled ? AssetImage('assets/snipzie_filled.png')
                            : AssetImage('assets/snipzie_white.png');
  var snipzie = Image(image: assetImage, height: 30, width: 30, fit: BoxFit.contain);

  BoxDecoration defaultTheme = BoxDecoration(
    gradient: GradientTheme.purple(),
    borderRadius: BorderRadius.circular(50),
    boxShadow: CustomShadow.getFabShadow(purpleMedium.withOpacity(0.5))
  );

  BoxDecoration filledTheme = BoxDecoration(
    color: bgColor.withOpacity(0.9),
    borderRadius: BorderRadius.circular(50),
    boxShadow: CustomShadow.getFabShadow(purpleMedium.withOpacity(0.5))
  );

  return GestureDetector(
    onTap: onPressed,
    child: Container(
      height: 55,
      width: 55,
      decoration: isFilled ? filledTheme : defaultTheme,
      child: Center(
        child: snipzie,
      ),
    ),
  );
}
