import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.red,
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
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 4,
                    height: MediaQuery.of(context).size.height * 2,
                    color: Colors.white38,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 16.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                maxRadius: 10,
                                backgroundColor: Colors.orange,
                              ),
                              Spacer(),
                              Text(
                                "HOME",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text("PRiCE"),
                              SizedBox(
                                width: 10.0,
                              ),
                              Spacer(),
                              OutlineButton(
                                  borderSide: BorderSide.none,
                                  color: Colors.transparent,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Order()),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    child: Text(
                                      "Order",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  )),
                              SizedBox(
                                width: 5.0,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Container(
                                margin: EdgeInsets.all(30.0),
                                width:
                                    MediaQuery.of(context).size.width * 0.022,
                                height:
                                    MediaQuery.of(context).size.width * 0.012,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Reve Laptop Store',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.07,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.start,
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      "Menjual Berbagai Kebutuhan Laptop High-end\nMulai dari ROG,TUF,dll.\ndengan desain yang mengesankan dan menarik.",
                                      style: TextStyle(),
                                    ),
                                    SizedBox(height: 5.0),
                                    Container(
                                      child: IconTheme(
                                        data: IconThemeData(
                                            color: Colors.white24, size: 12.0),
                                        child: Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                    FontAwesomeIcons.facebook)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                    FontAwesomeIcons.linkedin)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(FontAwesomeIcons
                                                    .instagram)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                    FontAwesomeIcons.twitter)),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(right: 16.0),
                                  width: MediaQuery.of(context).size.width * 1,
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: new AssetImage('images/laptop.png'),
                                  )),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
