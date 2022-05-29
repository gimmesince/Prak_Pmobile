import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:posttest7_erickapriansyah_2009106110/crud_controller.dart';
import 'package:posttest7_erickapriansyah_2009106110/firestore_controller.dart';
import 'package:posttest7_erickapriansyah_2009106110/txt.dart';

class Order2 extends StatelessWidget {
  Order2({Key? key,this.isUpdate = false}) : super(key: key);
  bool isUpdate;
  @override
  Widget build(BuildContext context) {
    final TextController txt = Get.put(TextController());
    FirestoreController fsc = Get.find();
    CrudController crudController = Get.find();
    if (isUpdate) {
      // Lanjutan dari onTap di Home.dart
      txt.namaDepanctrl.text = crudController.namaDepan.value;
      txt.namaBelakangctrl.text = crudController.namaBelakang.value;
      txt.laptopctrl.text = crudController.laptop.value;
    }
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
          title: Text('${this.isUpdate ? 'Update' : 'Tambah'} Data')),
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
                ElevatedButton(onPressed: () {
                  if (this.isUpdate) {
                    fsc.users.value.doc(crudController.id.value).update({
                      'namaDepan': txt.namaDepanctrl.text,
                      'namaBelakang': txt.namaBelakangctrl.text,
                      'laptop': txt.laptopctrl.text,
                    });
                  } else {
                    fsc.users.value.add({
                      'namaDepan': txt.namaDepanctrl.text,
                      'namaBelakang': txt.namaBelakangctrl.text,
                      'laptop': txt.laptopctrl.text,
                    });
                  }
                  FocusScope.of(context).unfocus();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Data nama depan ${txt.namaDepanctrl.text} dan nama belakang ${txt.namaBelakangctrl.text} berhasil ${this.isUpdate ? 'Diupdate' : 'Ditambahkan'}",
                      ),
                    ),
                  );
                }, child: Text(this.isUpdate ? 'Update' : 'Tambah'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

