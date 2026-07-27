import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Komputer()));
}

class Komputer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          children: [
            new Padding(padding: EdgeInsets.all(10.0)),
            new Image.asset("img/komputer.jpg", width: 200),
            new Padding(padding: EdgeInsets.all(10.0)),
            new Text(
              "Komputer",
              style: TextStyle(color: Colors.black, fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
