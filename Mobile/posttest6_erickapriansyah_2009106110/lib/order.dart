import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:posttest6_erickapriansyah_2009106110/radio.dart';
import 'package:posttest6_erickapriansyah_2009106110/txt.dart';

class Order2 extends StatelessWidget {
  const Order2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextController txt = Get.put(TextController());
    final RadioController radio = Get.put(RadioController());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text('Erick Apriansyah')),
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
                  controller: txt.namaDepanctrl,
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
                  controller: txt.namaBelakangctrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nama Belakang",
                  ),
                ),
                TextFormField(
                  maxLines: 5,
                  controller: txt.laptopctrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Laptop Pesanan",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: txt.onPressed, child: Text("Submit"))
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Get.to(Order()),
        label: Text("Tampilkan Pesanan"),
        icon: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class Order extends StatelessWidget {
  Order({Key? key}) : super(key: key);
  final TextController txt = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Orderan"),
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
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white24),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pesananan Atas Nama ${txt.namaDepan}${txt.namaBelakang}",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Laptop pesanan \n${txt.laptop}",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
