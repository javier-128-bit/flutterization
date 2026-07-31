import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Container> daftarSuperhero = [];

  var karakter = [
    {"nama": "Komputer", "gambar": "img/komputer.jpg"},
    {"nama": "Smartphone", "gambar": "img/smarphone.jpg"},
  ];

  @override
  void initState() {
    super.initState();
    _buatlist();
  }

  void _buatlist() {
    for (var item in karakter) {
      daftarSuperhero.add(
        Container(
          alignment: Alignment.center,
          child: Card(
            child: Column(
              children: [
                Hero(
                  tag: item["nama"] ?? "",
                  child: InkWell(
                    child: Image.asset(item["gambar"] ?? "", fit: BoxFit.cover),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detail(
                          nama: item["nama"] ?? "",
                          gambar: item["gambar"] ?? "",
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Text(item["nama"] ?? ""),
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("New Hero Section")),
      body: GridView.count(crossAxisCount: 2, children: daftarSuperhero),
    );
  }
}

class Detail extends StatelessWidget {
  Detail({required this.gambar, required this.nama});
  final String gambar;
  final String nama;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Hero(tag: this.nama, child: Image.asset(this.gambar)),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.nama,
                      style: TextStyle(fontSize: 20.0, color: Colors.blue),
                    ),
                    Text(
                      "${this.nama}@gmail.com",
                      style: TextStyle(fontSize: 20.0, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10.0)),
                  Text("12"),
                  Icon(Icons.star),
                ],
              ),
            ],
          ),

          Row(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              Expanded(
                child: Column(
                  children: [
                    Icon(Icons.call),
                    Text(
                      "Call Me if you can",
                      style: TextStyle(fontSize: 10.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Icon(Icons.call),
                    Text(
                      "Call Me if you can",
                      style: TextStyle(fontSize: 10.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Icon(Icons.call),
                    Text(
                      "Call Me if you can",
                      style: TextStyle(fontSize: 10.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
