import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_erickapriansyah_2009106110/constants.dart';
import 'package:posttest7_erickapriansyah_2009106110/crud_controller.dart';
import 'package:posttest7_erickapriansyah_2009106110/firestore_controller.dart';
import 'package:posttest7_erickapriansyah_2009106110/order.dart';

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);

  final FirestoreController fsc = Get.put(FirestoreController());
  final CrudController crudController = Get.put(CrudController());

  Widget builder(context, snapshot) {
    return (snapshot.hasData)
        ? Column(
            children: snapshot.data!.docs
                .map<Widget>(
                  (e) => MyListTile(
                    leadingText: e.get('laptop'),
                    title: e.get('namaDepan'),
                    subtitle: e.get('namaBelakang'),
                    onTap: () {
                      crudController.id(e.id);
                      crudController.namaDepan(e.get('namaDepan'));
                      crudController.namaBelakang(e.get('namaBelakang'));
                      crudController.laptop(e.get('laptop'));
                      Get.to(() => Order2(
                            isUpdate: true,
                          ));
                    },
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (_) => CustomAlert(
                          id: e.id,
                        ),
                      );
                    },
                  ),
                )
                .toList(),
          )
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
              ],
            ),
          );
  }

  looping() {
    return StreamBuilder<QuerySnapshot>(
      stream: fsc.users.value.orderBy('namaDepan').snapshots(),
      builder: builder,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Pesanan"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          looping(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Get.to(() => Order2()),
          child: Icon(Icons.add),
          backgroundColor: kPrimaryColor),
    );
  }
}

class CustomAlert extends StatelessWidget {
  const CustomAlert({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    FirestoreController fsc = Get.find();
    return AlertDialog(
      title: const Text('Hapus Data'),
      content: const Text('Kegiatan ini tidak dapat dikembalikan'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Get.back(),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            fsc.users.value.doc(id).delete();
            Get.back();
          },
          child: const Text(
            'Hapus',
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile(
      {Key? key,
      required this.leadingText,
      required this.title,
      required this.subtitle,
      this.onTap,
      this.onLongPress})
      : super(key: key);

  final String leadingText;
  final String title;
  final String subtitle;
  final void Function()? onTap;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        leadingText,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: onTap,
      onLongPress: onLongPress,
    );
  }
}
