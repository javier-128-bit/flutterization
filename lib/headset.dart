import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Headset()));
}

class Headset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          children: [
            new Padding(padding: EdgeInsets.all(10.0)),
            new Icon(Icons.headset, size: 90.0),
            new Padding(padding: EdgeInsets.all(10.0)),
            new Text(
              "Headset",
              style: TextStyle(color: Colors.black, fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
