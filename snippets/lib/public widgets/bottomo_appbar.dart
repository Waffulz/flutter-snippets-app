import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:snippets/globals/colors.dart';

Widget SnippetsBottomAppbar(BuildContext context) {
  return ClipRect(
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: Color.fromRGBO(255, 255, 255, .9),
        elevation: 0,
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          height: MediaQuery.of(context).size.height * 0.08,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back, color: purpleMedium,),
                onPressed: (){},
              ),
              Expanded(child: SizedBox()),
              IconButton(
                icon: Icon(Icons.arrow_forward, color: purpleMedium,),
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
