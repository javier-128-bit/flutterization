import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: "Javierere", home: new Hallow()));
}

class Hallow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.android_outlined),
        title: new Center(
          child: new Text(
            "Javierere",
            style: new TextStyle(color: Colors.white, fontFamily: "Serif"),
          ),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Container(
        child: new Column(
          children: [
            new Center(
              child: new Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  new Icon(Icons.local_pizza),
                  new Icon(Icons.done_all),
                  new Icon(Icons.done_sharp),
                ],
              ),
            ),

            new Icon(Icons.local_pizza),
            new Icon(Icons.done_all),
            new Icon(Icons.done_sharp),
          ],
        ),
      ),
    );
  }
}
