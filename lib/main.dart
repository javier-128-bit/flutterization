import 'package:flutter/material.dart';
import 'komputer.dart' as komputer;
import 'smartphone.dart' as smartphone;
import 'radio.dart' as radio;
import 'headset.dart' as headset;

void main() {
  runApp(new MaterialApp(home: new Home(), title: "Hallow"));
}

class Home extends StatefulWidget {
  @override
  _Homestate createState() => new _Homestate();
}

class _Homestate extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        leading: new Icon(Icons.android),
        title: new Text("Hallo"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer), text: "Komputer"),
            new Tab(icon: new Icon(Icons.smartphone), text: "Smartphone"),
            new Tab(icon: new Icon(Icons.radio), text: "Radio"),
            new Tab(icon: new Icon(Icons.headset), text: "Headset"),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new komputer.Komputer(),
          new smartphone.Smartphone(),
          new radio.Radio(),
          new headset.Headset(),
        ],
      ),

      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer)),
            new Tab(icon: new Icon(Icons.smartphone)),
            new Tab(icon: new Icon(Icons.radio)),
            new Tab(icon: new Icon(Icons.headset)),
          ],
        ),
      ),
    );
  }
}
