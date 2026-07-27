import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: "Haviereere",
      home: new Nyoba(),
      routes: <String, WidgetBuilder>{
        '/halsatu': (BuildContext context) => new Nyoba(),
        '/haldua': (BuildContext context) => new Nyobs(),
      },
    ),
  );
}

class Nyoba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.android),
        title: new Text("Javaieerre"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyCard(
              icon: Icons.home,
              color: Colors.black,
              text: "Home",
              routename: "/haldua",
            ),
          ],
        ),
      ),
    );
  }
}

class Nyobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.android),
        title: new Text("Javaieerre"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyCard(
              icon: Icons.tap_and_play,
              color: Colors.greenAccent,
              text: "Home",
              routename: "/halsatu",
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({
    required this.icon,
    required this.color,
    required this.text,
    required this.routename,
  });

  final IconData icon;
  final Color color;
  final String text;
  final String routename;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: new Card(
        child: new Column(
          children: <Widget>[
            new IconButton(
              onPressed: () {
                Navigator.pushNamed(context, routename);
              },
              icon: new Icon(icon, size: 50.0, color: color),
            ),
            new Text(text),
          ],
        ),
      ),
    );
  }
}
