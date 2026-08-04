import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> agama = ["Islam", "Hindu", "Kristen", "Katolik", "Kong hu cu"];
  String _agama = "Islam";
  String _jk = "";

  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerMotto = TextEditingController();

  void _pilihjk(value) {
    setState(() {
      _jk = value;
    });
  }

  void _pilihagama(value) {
    setState(() {
      _agama = value;
    });
  }

  void _kirimdata() {
    AlertDialog alertDialog = AlertDialog(
      content: SizedBox(
        height: 200.0,
        child: Column(
          children: [
            Text("Nama: ${controllerNama.text}"),
            Text("Password: ${controllerPassword.text}"),
            Text("Motto: ${controllerMotto.text}"),
            Text("Jenis Kelamin: $_jk"),
            Text("Agama: $_agama"),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),
      ),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form")),

      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  controller: controllerNama,
                  decoration: InputDecoration(
                    hintText: "Nama",
                    labelText: "Nama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),

                Padding(padding: EdgeInsetsGeometry.all(10.0)),
                TextField(
                  controller: controllerPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),

                Padding(padding: EdgeInsetsGeometry.all(10.0)),
                TextField(
                  maxLines: 3,
                  controller: controllerMotto,
                  decoration: InputDecoration(
                    hintText: "Moto",
                    labelText: "Moto",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsetsGeometry.only(top: 20.0)),
                    Text("Pilih Jenis Kelamin", textAlign: TextAlign.start),
                    RadioListTile(
                      value: "Laki Laki",
                      title: Text("Laki Laki"),
                      groupValue: _jk,
                      onChanged: (value) {
                        _pilihjk(value);
                      },
                      activeColor: Colors.red,
                    ),

                    RadioListTile(
                      value: "Cewek",
                      title: Text("Cewek"),
                      groupValue: _jk,
                      onChanged: (value) {
                        _pilihjk(value);
                      },
                      activeColor: Colors.red,
                    ),

                    Padding(padding: EdgeInsetsGeometry.only(top: 20.0)),
                    Row(
                      children: [
                        Text("Agama: "),
                        DropdownButton(
                          value: _agama,
                          onChanged: (value) {
                            _pilihagama(value);
                          },
                          items: agama.map((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),

                    ElevatedButton(
                      onPressed: () {
                        _kirimdata();
                      },
                      child: Text("Kirim"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
