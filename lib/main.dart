import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _Homestate createState() => _Homestate();
}

class _Homestate extends State<Home> {
  final List<String> gambar = [
    "img/Javier.jpeg",
    "img/Pilemon.jpeg",
    "img/Sutha.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;
    return Scaffold(
      appBar: AppBar(title: Text("Choose your hero bcc")),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topRight,
            end: FractionalOffset.bottomLeft,
            colors: [Colors.red, Colors.redAccent],
          ),
        ),
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.87),
          itemCount: gambar.length,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 22.0),
              child: Material(
                borderRadius: BorderRadius.circular(15.0),
                elevation: 8.0,
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Hero(
                      tag: gambar[i],

                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                HalamanDua(gambar: gambar[i]),
                          ),
                        ),
                        child: Image.asset(gambar[i], fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class HalamanDua extends StatefulWidget {
  const HalamanDua({required this.gambar});

  final String gambar;

  @override
  State<HalamanDua> createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  Color warna = Colors.grey;
  void _pilihannya(Pilihan pilihan) {
    setState(() {
      warna = pilihan.warna;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Hero"),
        backgroundColor: Colors.grey,
        actions: [
          PopupMenuButton<Pilihan>(
            onSelected: _pilihannya,
            itemBuilder: (BuildContext context) {
              return listPilihan.map((Pilihan x) {
                return PopupMenuItem<Pilihan>(child: Text(x.teks), value: x);
              }).toList();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Colors.blue, warna, Colors.black],
              ),
            ),
          ),
          Center(
            child: Hero(
              tag: widget.gambar,
              child: ClipOval(
                child: SizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: Material(
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Image.asset(widget.gambar, fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Pilihan {
  const Pilihan({required this.teks, required this.warna});

  final String teks;
  final Color warna;
}

List<Pilihan> listPilihan = const <Pilihan>[
  const Pilihan(teks: "Reddorz", warna: Colors.red),
  const Pilihan(teks: "Billions", warna: Colors.white),
  const Pilihan(teks: "Bca", warna: Colors.blue),
];
