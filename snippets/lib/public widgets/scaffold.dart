import 'package:flutter/material.dart';
import 'package:snippets/globals/exports.dart';

import 'appbar.dart';
import 'bottomo_appbar.dart';
import 'fab.dart';

class SnippetsScaffold extends StatefulWidget {

  bool isFilled;
  final Widget body;
  SnippetsScaffold({Key key, this.body, this.isFilled = false}) : super(key: key);

  @override
  _SnippetsScaffoldState createState() => _SnippetsScaffoldState();
}

class _SnippetsScaffoldState extends State<SnippetsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: GradientTheme.purple()
      ),
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        // Needed to apply transparency to the bottom Appbar
        extendBody: true,
        // Scaffold properties
        backgroundColor:  widget.isFilled ? Colors.transparent : bgColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // Scaffold widgets
        bottomNavigationBar: snippetsBottomAppbar(context),
        floatingActionButton: snippetsFab((){}, widget.isFilled),
        body: Stack(
          children: <Widget>[
            Center(child: widget.body),
            // Place the appbar always at the end of the stack to show it above
            // the widgets
            snippetsAppbar(context, widget.isFilled)
          ],
        ),
      ),
    );
  }
}
