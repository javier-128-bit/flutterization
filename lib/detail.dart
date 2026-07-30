import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({required this.nama, required this.image});
  final String nama;
  final String image;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Ini adalah detail akun si ${nama}")),
      body: new Container(
        child: new Column(children: [new Image.asset(image)]),
      ),
    );
  }
}
