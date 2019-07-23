import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:snippets/globals/exports.dart';
import 'package:snippets/public%20widgets/scaffold.dart';

class VisibleKeyboardSnippet extends StatefulWidget {
  @override
  _VisibleKeyboardSnippetState createState() => _VisibleKeyboardSnippetState();
}

class _VisibleKeyboardSnippetState extends State<VisibleKeyboardSnippet> {
  double height = 200;

  @override
  void initState() {
    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        setState(() {
        height = visible ? 500 : 200;
        });
      },
    );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SnippetsScaffold(
      isFilled: true,
      body: visibleKeyboardBody()
    );
  }

  Text title = Text(
    'Would you like to share your thougs?',
    style: TextStyle(
      color: white,
      fontSize: largeText,
      fontWeight: FontWeight.w700,
      height: 1.2
    ),
  );

  Container decorationLine = Container(
    margin: EdgeInsets.only(left: 8, right: 8),
    height: 40,
    width: 1,
    color: white.withOpacity(0.7)
  );

  TextField textField = TextField(
    style: TextStyle(
      color: white,
    ),
    decoration: InputDecoration.collapsed(
        hintText: 'My awesome text',
        hintStyle: TextStyle(
            color: white.withOpacity(0.7)
        )
    ),
  );

  Widget customTextField() => Row(
    children: <Widget>[
      decorationLine,
      Expanded(child: textField),
    ],
  );

/// Please note that the keyboard push up the Widgets when it appears
/// To avoid this behavior you need to add [resizeToAvoidBottomPadding: false]
/// in your Scaffold
  Widget visibleKeyboardBody() {
    return AnimatedContainer(
      height: height,
      curve: Curves.easeOut,
      duration: Duration(milliseconds: 300),
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title,
          SizedBox(height: 16,),
          customTextField()
            ],
          ),
        );
  }




}
