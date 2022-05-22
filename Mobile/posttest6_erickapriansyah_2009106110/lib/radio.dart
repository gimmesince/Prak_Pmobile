import 'package:get/get.dart';

enum Warna{merah,biru}

class RadioController extends GetxController{
  var warna = Warna.merah.obs;
  onChanged(value){
    warna(value);
  }
}