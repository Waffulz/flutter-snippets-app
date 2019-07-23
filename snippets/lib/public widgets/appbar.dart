import 'package:flutter/material.dart';
import 'package:snippets/globals/exports.dart';
import 'package:snippets/public%20widgets/switch_theme_button.dart';

Widget snippetsAppbar(BuildContext context, bool isFilled) {
  return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.only(
          left: 16,
          right: 32
        ),
        height: MediaQuery.of(context).size.height * 0.11,
        color: isFilled ? Colors.transparent : bgColor.withOpacity(0.97),
        child: Align(
          child: Column(
            children: <Widget>[
              Expanded(child: Container()),
              Row(
                children: <Widget>[
                  Icon(Icons.navigate_before, color: isFilled ? white :lightText,),
                  Text(
                    'Go home',
                    style: TextStyle(
                        color: isFilled ? white :lightText,
                        fontSize: largeText,
                        fontFamily: "Modulus",
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Expanded(child: Container()),
                  SwitchThemeButton(isFilled)
                ],
              ),
            ],
          ),
        ),
      )
  );
}