import 'package:flutter/material.dart';
import 'package:snippets/public%20widgets/scaffold.dart';
import 'package:snippets/snippets/SpinKit/spinKit_tiles.dart';



class SpinKitSnippet extends StatefulWidget {
  @override
  _SpinKitSnippetState createState() => _SpinKitSnippetState();
}

class _SpinKitSnippetState extends State<SpinKitSnippet> {
  @override
  Widget build(BuildContext context) {
    return SnippetsScaffold(
      body: spinKitBody(),
    );
  }

  Widget spinKitBody() {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: <Widget>[
          SizedBox(height: mediaQuery.height * 0.15),
          Expanded(
            child: SpinKitGrid(),
          )
        ],
      ),
    );
  }


}

