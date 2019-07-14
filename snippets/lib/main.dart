import 'package:flutter/material.dart';
import 'globals/exports.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Snippets',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Avenir"
      ),
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}
class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {

    var assetImage = AssetImage('assets/snipzie_white.png');
    var snipzie = Image(image: assetImage, height: 150, width: 150, fit: BoxFit.contain);

    return Container(
      decoration: BoxDecoration(
        gradient: GradientTheme.purple()
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              snipzie,
              SizedBox(height: 50),
              Text(
                'Welcome to Flutter Snippets',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: extraLargeText,
                  color: white,
                  fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Under development',
                style: TextStyle(
                    fontSize: normalText,
                    color: bgColor,
                    fontWeight: FontWeight.w300
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


