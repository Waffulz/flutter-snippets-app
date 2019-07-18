import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Test extends StatelessWidget {

  Future<List<int>> _getResults() async {
    await Future.delayed(Duration(seconds: 3));
    return List<int>.generate(10, (index) => index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Text(
              'My Awesome List',
              style: TextStyle(fontSize: 40),
            ),
            Expanded(
              child: FutureBuilder<List<int>>(
                // perform the future delay to simulate request
                  future: _getResults(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return ListView.builder(
                        itemCount: 10,
                        // Important code
                        itemBuilder: (context, index) => Shimmer.fromColors(
                            baseColor: Colors.green,
                            highlightColor: Colors.white,
                            child: ListItem(index: -1)),
                      );
                    }

                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) => ListItem(index: index),
                    );
                  }),)
          ]),
    );
  }
}

class ListItem extends StatelessWidget {
  final int index;
  const ListItem({Key key, this.index});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        children: <Widget>[
          Container(
            width: 50.0,
            height: 50.0,
            margin: EdgeInsets.only(right: 15.0),
            color: Colors.blue,
          ),
          index != -1
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'This is title $index',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('This is more details'),
              Text('One more detail'),
            ],
          )
              : Expanded(
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

class Meh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200.0,
        height: 100.0,
        child: Shimmer.fromColors(
          baseColor: Colors.red,
          highlightColor: Colors.yellow,
          child: Text(
            'Shimmer',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight:
              FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
