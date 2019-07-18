import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:snippets/globals/exports.dart';
import 'package:snippets/public%20widgets/scaffold.dart';

class RerunLogicScreen extends StatefulWidget {
  @override
  _RerunLogicScreenState createState() => _RerunLogicScreenState();
}
class _RerunLogicScreenState extends State<RerunLogicScreen> {
  @override
  Widget build(BuildContext context) {
    return SnippetsScaffold(
      body: rerunLogicBody(context),
    );
  }

  Widget rerunLogicBody(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String assetPath = 'assets/chillhop2.jpg';

    Text songText = Text(
      'Thinking of you',
      style: TextStyle(
        fontSize: largeText,
        fontWeight: FontWeight.w700,
        color: darkText
      ),
    );

    Text authorText = Text(
      'Chillhop Records',
      style: TextStyle(
        fontSize: normalText,
        color: darkText
      ),
    );

    Text resetErrorText = Text(
      'Reset error',
      style: TextStyle(
        fontSize: normalText,
        color: lightText,
        fontWeight: FontWeight.w300,
        decoration: TextDecoration.underline
      ),
    );

    Container vinyl = Container(
      padding: EdgeInsets.all(32),
      child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: height * 0.26,
              width: height * 0.26,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(assetPath)
                  )
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                height: height * 0.3,
                color: bgColor.withOpacity(0.4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.skip_previous, color: disabled, size: 32,),
                    Container(
                      height: height * 0.25,
                      width: height * 0.25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(assetPath)
                        )
                      ),
                    ),
                    Icon(Icons.skip_next, color: disabled, size: 32,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    Container playButton = Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: GradientTheme.purple(),
        boxShadow: CustomShadow.getCircularShadow(purpleMedium.withOpacity(0.7))
      ),
      child: Icon(Icons.play_arrow, color: white, size: 32,),
    );



    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        vinyl,
        songText,
        SizedBox(height: 8,),
        authorText,
        SizedBox(height: 32,),
        playButton,
        SizedBox(height: 64,),
        resetErrorText,
        SizedBox(height: 32),
      ],
    );
  }



}
