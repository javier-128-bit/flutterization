import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.android),
        title: new Text("Javier Elsyera"),
      ),

      body: new Container(
        child: new ListView(
          children: [
            Cardo(image: "img/komputer.jpg", text: "Ini adalah komputer"),
            Cardo(image: "img/smarphone.jpg", text: "Ini adalah Smartphone"),
            Cardo(image: "img/komputer.jpg", text: "Ini adalah komputer"),
            Cardo(image: "img/smarphone.jpg", text: "Ini adalah Smartphone"),
            Cardo(image: "img/komputer.jpg", text: "Ini adalah komputer"),
            Cardo(image: "img/smarphone.jpg", text: "Ini adalah Smartphone"),
            Cardo(image: "img/komputer.jpg", text: "Ini adalah komputer"),
            Cardo(image: "img/smarphone.jpg", text: "Ini adalah Smartphone"),
            Cardo(image: "img/komputer.jpg", text: "Ini adalah komputer"),
            Cardo(image: "img/smarphone.jpg", text: "Ini adalah Smartphone"),
          ],
        ),
      ),
    );
  }
}

class Cardo extends StatelessWidget {
  Cardo({required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        children: [
          new Image.asset(image, width: 200.0),
          new Container(
            padding: EdgeInsets.all(10.0),
            child: new Center(
              child: new Column(
                children: [
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text(
                    text,
                    style: new TextStyle(color: Colors.blue, fontSize: 20.0),
                  ),
                  new Text("By Javier"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
