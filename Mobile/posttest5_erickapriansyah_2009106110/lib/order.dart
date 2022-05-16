import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

enum Warna { unknown, merah, biru }

class _OrderState extends State<Order> {
  final namaDepanctrl = TextEditingController();
  final namaBelakangctrl = TextEditingController();
  final laptopctrl = TextEditingController();
  Warna warna = Warna.unknown;
  String namaDepan = "", namaBelakang = "", laptop = "";
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    namaDepanctrl.dispose();
    namaBelakangctrl.dispose();
    laptopctrl.dispose();
    super.dispose();
  }

  String getWarna(Warna? value) {
    if (value == Warna.merah) {
      return "Merah";
    } else if (value == Warna.biru) {
      return "Biru";
    }
    return "Tidak Berwarna";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title : Text('Erick Apriansyah')
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      colors: [
                    Colors.black,
                    Colors.deepPurpleAccent,
                    Colors.red,
                    Colors.orange,
                    Colors.deepOrangeAccent,
                    Colors.orange
                  ])),
            ),
            Align(
              alignment: Alignment(-0.9, -1),
              child: Container(
                width: 320.0,
                height: 320.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(60, 211, 210, 210)),
              ),
            ),
            Align(
              alignment: Alignment(0.9, 1),
              child: Container(
                width: 320.0,
                height: 320.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white24),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  maxLines: 2,
                  controller: namaDepanctrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nama Depan",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLines: 2,
                  controller: namaBelakangctrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nama Belakang",
                  ),
                ),
                TextFormField(
                  maxLines: 5,
                  controller: laptopctrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Laptop Pesanan",
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text('Merah'),
                        leading: Radio(
                          groupValue: warna,
                          value: Warna.merah,
                          onChanged: (Warna? value) {
                            setState(() {
                              warna = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text('Biru'),
                        leading: Radio(
                          groupValue: warna,
                          value: Warna.biru,
                          onChanged: (Warna? value) {
                            setState(() {
                              warna = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        namaDepan = namaDepanctrl.text;
                        namaBelakang = namaBelakangctrl.text;
                        laptop = laptopctrl.text;
                      });
                    },
                    child: const Text("Tampilkan Pesanan")),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Nama Pembeli                   = $namaDepan $namaBelakang'),
                    Text('Laptop yang ingin dibeli   = $laptop'),
                    Text(
                        'Warna                              = ${getWarna(warna)}'),
                  ],
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}