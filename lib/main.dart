import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: "Javierere", home: new Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController controllerInput = new TextEditingController();
  final TextEditingController controllerAlert = new TextEditingController();
  final TextEditingController controllerSnackBar = new TextEditingController();

  String teks = "";

  void _snackBar(BuildContext context, String str) {
    if (str.isEmpty) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(str), duration: new Duration(seconds: 3)),
    );
  }

  void _alertDialog(str) {
    if (str.isEmpty) return;
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(
        str,
        style: new TextStyle(color: Colors.black, fontSize: 20.0),
      ),
      actions: <Widget>[
        new ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text("Ok"),
        ),
      ],
    );
    showAboutDialog(context: context, children: [alertDialog]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("This Is Javier"),
        backgroundColor: Colors.purple,
      ),

      body: new Container(
        child: new Column(
          children: [
            new TextField(
              controller: controllerInput,
              decoration: new InputDecoration(hintText: "Tulis Disini Dongs"),
              onSubmitted: (String str) {
                setState(() {
                  teks = str + "\n" + teks;
                  controllerInput.text = "";
                });
              },
            ),
            new Text(
              teks,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),

            new TextField(
              controller: controllerAlert,
              decoration: new InputDecoration(hintText: "Tulis Disini Dongs"),
              onSubmitted: (String str) {
                setState(() {
                  _alertDialog(str);
                  controllerAlert.text = "";
                });
              },
            ),

            new TextField(
              controller: controllerSnackBar,
              decoration: new InputDecoration(hintText: "Tulis Disini Dongs"),
              onSubmitted: (String str) {
                setState(() {
                  _snackBar(context, str);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
