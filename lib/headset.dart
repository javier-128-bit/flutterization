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
            new Image(
              image: new NetworkImage(
                "https://mochamad-javier-elsyera.vercel.app/assets/Pier-removebg-preview-mF6jXGfc.png",
              ),
              width: 200.0,
            ),
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
