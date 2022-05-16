import 'package:flutter/material.dart';
import 'package:posttest5_erickapriansyah_2009106110/constans.dart';
import 'package:posttest5_erickapriansyah_2009106110/detail_page.dart';
import 'package:posttest5_erickapriansyah_2009106110/header.dart';
import 'package:posttest5_erickapriansyah_2009106110/landing_page.dart';
import 'package:posttest5_erickapriansyah_2009106110/order.dart';
import 'package:posttest5_erickapriansyah_2009106110/product.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final snackbar = SnackBar(
      content: Text(
    "Detail Page",
    style: TextStyle(
      fontSize: 20,
    ),
  ));
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Erick Apriansyah_2009106110"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("User 2"),
              accountEmail: Text("user2@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                radius: 50.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage:
                    NetworkImage("http://tineye.com/images/widgets/mona.jpg"),
              ),
            ),
            SizedBox(
              height: 75,
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text("Order"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return Order();
                }));
              },
            ),
            SizedBox(
              height: 75,
            ),
            ListTile(
                leading: Icon(Icons.flight_land),
                title: Text("Kembali ke Landing Page"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return LandingPage();
                  }));
                })
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
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
                        'ROG STRIX 15',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ryzen 9 6900HX GeForce RTX 3080 TI",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 80,
                        child: Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailPage(),
                                      ));
                                },
                                child: Text("Detail"))
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

List getLessons() {
  return [
    Product(
        nama: "ROG Strix G15  ",
        spec: "Ryzen 9 6900HX GeForce RTX 3080 TI",
        price: 24980000,
        content:
            "ROG Strix G15 yang memiliki desain ramping, menawarkan ketangguhan untuk keseriusan bermain beserta multitasking dengan Windows 10 Home. Dengan CPU Intel® Core™ i7 Gen 10 terbaru dan GPU GeForce RTX™ 2060, menawarkan daya FPS tinggi yang memberikan manfaat penuh hingga kecepatan layar 144Hz/3ms. Inovasi pendingin cerdas bagaikan logam cair sehingga meningkatkan kinerja. Konektivitas Ultrafast Wi-Fi 6 dan 2 SSD berjalan di RAID 0 mempercepat kerja dan bermain. Ruang SSD ketiga yang dapat menyimpan lebih banyak koleksi permainan ke mana pun."),
    Product(
        nama: "Acer Predator Nitro 5",
        spec: "I7- 11800H 32/512GB RTX 3050",
        price: 18480000,
        content:
            "Kuasai dunia game dengan kekuatan gabungan prosesor Intel ® Core™ i7 Generasi ke-12 1 dan GPU NVIDIA ® GeForce RTX™ 30 Series (dioptimalkan sepenuhnya untuk MGP maksimum). Konfigurasikan laptop Anda untuk kecepatan tertinggi dan penyimpanan besar dengan dua slot untuk GEN 4 M.2 PCIe dan RAM DDR4 3200 hingga 32GB."),
    Product(
        nama: "Lenovo Legion 7",
        spec: "Ryzen 9 5900HX 32/2TB GeForce RTX 3080",
        price: 42990000,
        content:
            "Dibalik eksterior alumunium aerospace-grade yang sempurna, laptop gaming Legion 7 Gen 6 (16 inci AMD) memiliki performa yang ganas. Ditenagai oleh prosesor AMD generasi terbaru dan NVIDIA®GeForce RTX, perangkat ini dioptimalkan dengan AI melalui Lenovo Legion AI Engine. Memiliki sistem pendingin canggih yang mendukung resolusi tertinggi yang pernah ada. Dengan rasio aspek 16:10 dan refresh rate hingga 165Hz memungkinkan Anda untuk memenangkan permainan, meningkatkan kemampuan dan membuat permainan terasa lebih nyata."),
    Product(
        nama: "Asus TUF-Gaming A15",
        spec: "Ryzen 7 4800 8/512GB GTX 1650 TI",
        price: 15790000,
        content:
            "Ditujukan untuk bermain game yang serius dengan durabilitas ekstra, TUF Gaming A15 adalah laptop gaming Windows 10 Home yang dapat membawa Anda menuju kemenangan. Didukung oleh AMD Ryzen™ 7 4800 Series CPU dan GeForce RTX™ 2060 GPU terbaru, gameplay penuh aksi cepat, lancar, dan layar IPS-level dengan refresh rate hingga 144Hz. Meskipun memiliki sasis yang lebih kecil dan lebih portabel dari pendahulunya, laptop gaming ini juga dilengkapi baterai 48Wh yang lebih besar untuk masa pakai baterai yang superior. Pendinginan pembersihan-diri yang efisien bergabung dengan daya tahan kelas-militer TUF yang khas untuk menjadikan pejuang jalanan yang teruji pertempuran ini sebagai sekutu yang andal bagi para gamer saat bepergian."),
    Product(
        nama: "Asus TUF-Gaming F15",
        spec: "I7- 12700H 16/512GB RTX 3060",
        price: 15680000,
        content:
            "Dipersenjatai untuk pertempuran, TUF Gaming F15 dilengkapi dengan CPU Intel® Core™ i7 Generasi ke-10 dengan 6 core dan 12 thread untuk menyelesaikan game serius, streaming, dan multitasking tugas berat. Dipasangkan dengan GPU diskrit GeForce® GTX 1660 Ti, ini dapat memompa kecepatan bingkai tinggi yang andal di berbagai macam game. Percepat waktu muat di seluruh koleksi besar dengan SSD NVMe PCIe® hingga 1 TB dan ruang untuk SSD kedua.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.  ")
  ];
}
