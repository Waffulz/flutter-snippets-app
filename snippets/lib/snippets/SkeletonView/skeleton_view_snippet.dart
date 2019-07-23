import 'package:flutter/material.dart';
import 'package:snippets/globals/exports.dart';
import 'package:snippets/public%20widgets/scaffold.dart';
import 'package:snippets/snippets/SkeletonView/skeleton_view.dart';

import 'normal_view.dart';


class SkeletonViewSnippet extends StatefulWidget {
  @override
  _SkeletonViewSnippetState createState() => _SkeletonViewSnippetState();
}

class _SkeletonViewSnippetState extends State<SkeletonViewSnippet> {

  Future<String> _getData() async {
    await Future.delayed(Duration(seconds: 3));
    return 'Data';
  }

  @override
  Widget build(BuildContext context) {
    return SnippetsScaffold(
      body: skeletonViewBody(),
    );
  }

  Widget skeletonViewBody() {

    Text screenTitle = Text(
      'APP REVIEW',
      style: TextStyle(
          fontSize: largeText,
          color: darkText,
          fontWeight: FontWeight.w700
      ),
    );

    Padding screenDescription = Padding(
      padding: const EdgeInsets.only(left: 64.0, right: 64.0),
      child: Text(
      'Read what people is saying about Flutter snippets app',
      style: TextStyle(
        fontSize: normalText,
        color: lightText
      ),
      textAlign: TextAlign.center,
      )
    );
/**/
    return ListView(
      children: <Widget>[
        Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          screenTitle,
          SizedBox(height: 8),
          screenDescription,
          SizedBox(height: 32),
          FutureBuilder(
            future: _getData(),
            builder: (context, snapshot){
              if(!snapshot.hasData) {
                return SkeletonView();
              }
              return NormalView();
            },
          )
          //SkeletonView()
          ],
        ),
      ],
    );
  }



}

