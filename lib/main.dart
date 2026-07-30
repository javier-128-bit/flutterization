import 'package:flutter/material.dart';
import 'detail.dart';

void main() {
  runApp(new MaterialApp(title: "Konz", home: new Home()));
}

class Home extends StatefulWidget {
  @override
  _Homestate createState() => _Homestate();
}

class _Homestate extends State<Home> {
  String gambar1 = "img/komputer.jpg";
  String gambar2 = "img/smarphone.jpg";
  String backup = "";

  String nama1 = "Javier";
  String nama2 = "Ilham";
  String backupnama = "";

  void gantiUser() {
    setState(() {
      backup = gambar1;
      gambar1 = gambar2;
      gambar2 = backup;
    });
  }

  void gantiNama() {
    setState(() {
      backup = nama1;
      nama1 = nama2;
      nama2 = backup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Nyoba drawer katanya canggih nih"),
        backgroundColor: Colors.red,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            new UserAccountsDrawerHeader(
              currentAccountPicture: new GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Detail(nama: nama1, image: gambar1),
                    ),
                  );
                },
                child: new CircleAvatar(backgroundImage: AssetImage(gambar1)),
              ),
              accountName: new Text(nama1),
              accountEmail: new Text("Javier@gmail.com"),
              decoration: new BoxDecoration(color: Colors.red),
              otherAccountsPictures: [
                GestureDetector(
                  onTap: () {
                    gantiUser();
                    gantiNama();
                  },
                  child: new CircleAvatar(backgroundImage: AssetImage(gambar2)),
                ),
              ],
            ),
            new ListTile(
              title: new Text("Setting"),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
            ),
          ],
        ),
      ),
      body: new Container(),
    );
  }
}
