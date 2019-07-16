import 'package:flutter/material.dart';
import 'package:snippets/globals/exports.dart';
import 'package:snippets/public%20widgets/switch_theme_button.dart';

Widget SnippetsAppbar(BuildContext context) {
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
        color: bgColor.withOpacity(0.97),
        child: Align(

          child: Column(
            children: <Widget>[
              Expanded(child: Container()),
              Row(
                children: <Widget>[
                  Icon(Icons.navigate_before, color: lightText,),
                  Text(
                    'Go home',
                    style: TextStyle(
                        color: lightText,
                        fontSize: largeText,
                        fontFamily: "Modulus",
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Expanded(child: Container()),
                  SwitchThemeButton()
                ],
              ),
            ],
          ),
        ),
      )
  );
}