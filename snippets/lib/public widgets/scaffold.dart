import 'package:flutter/material.dart';
import 'package:snippets/globals/exports.dart';

import 'appbar.dart';
import 'bottomo_appbar.dart';
import 'fab.dart';

class SnippetsScaffold extends StatefulWidget {

  final Widget body;
  SnippetsScaffold({Key key, this.body});

  @override
  _SnippetsScaffoldState createState() => _SnippetsScaffoldState();
}

class _SnippetsScaffoldState extends State<SnippetsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Needed to apply transparency to the bottom Appbar
      extendBody: true,
      // Scaffold properties
      backgroundColor: bgColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // Scaffold widgets
      bottomNavigationBar: SnippetsBottomAppbar(context),
      floatingActionButton: SnippetsFab((){print('FabClicked');}),
      body: Stack(
        children: <Widget>[
          Center(child: widget.body),
          // Place the appbar always at the end of the stack to show it above
          // the widgets
          SnippetsAppbar(context)
        ],
      ),
    );
  }
}
