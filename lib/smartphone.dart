import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Smartphone()));
}

class Smartphone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          children: [
            new Padding(padding: EdgeInsets.all(10.0)),
            new Icon(Icons.smartphone, size: 90.0),
            new Padding(padding: EdgeInsets.all(10.0)),
            new Text(
              "Smartphone",
              style: TextStyle(color: Colors.black, fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
