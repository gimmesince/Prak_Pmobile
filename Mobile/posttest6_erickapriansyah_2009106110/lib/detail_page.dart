import 'package:flutter/material.dart';
import 'package:posttest6_erickapriansyah_2009106110/constant.dart';
class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Page")),
      body: Center(
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: kPrimaryColor,
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: kPrimaryColor,
                    radius: 108,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/rogstrix.png"),
                      radius: 100,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "ROG Strix G15 yang memiliki desain ramping, menawarkan ketangguhan untuk keseriusan bermain beserta multitasking dengan Windows 10 Home. Dengan CPU Intel® Core™ i7 Gen 10 terbaru dan GPU GeForce RTX™ 2060, menawarkan daya FPS tinggi yang memberikan manfaat penuh hingga kecepatan layar 144Hz/3ms. Inovasi pendingin cerdas bagaikan logam cair sehingga meningkatkan kinerja. Konektivitas Ultrafast Wi-Fi 6 dan 2 SSD berjalan di RAID 0 mempercepat kerja dan bermain. Ruang SSD ketiga yang dapat menyimpan lebih banyak koleksi permainan ke mana pun.",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rp.18.800.000",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
