import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TextController extends GetxController{
  var namaDepan = ''.obs;
  var namaBelakang = ''.obs;
  var laptop = ''.obs;
  final namaDepanctrl = TextEditingController();
  final namaBelakangctrl = TextEditingController();
  final laptopctrl = TextEditingController();
  onPressed(){
    namaDepan = namaDepanctrl.text.obs;
    namaBelakang = namaBelakangctrl.text.obs;
    laptop = laptopctrl.text.obs;
  }
  
  @override
  void onClose(){
    namaDepanctrl.dispose();
    namaBelakangctrl.dispose();
    laptopctrl.dispose();
    super.onClose();
  }
}

