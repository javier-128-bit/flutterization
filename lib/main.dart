import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(new MaterialApp(home: new Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  List dataJson = [];

  Future<void> ambilData() async {
    http.Response hasil = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      headers: {"Accept": "application/json"},
    );

    this.setState(() {
      dataJson = json.decode(hasil.body);
    });
  }

  @override
  void initState() {
    super.initState();
    ambilData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Javiererere")),
      body: new Container(
        child: new ListView.builder(
          itemCount: (dataJson == null ? 0 : dataJson.length),
          itemBuilder: (context, index) {
            return ListTile(
              title: new Text(dataJson[index]["title"]),
              subtitle: new Text(dataJson[index]["body"]),
            );
          },
        ),
      ),
    );
  }
}
