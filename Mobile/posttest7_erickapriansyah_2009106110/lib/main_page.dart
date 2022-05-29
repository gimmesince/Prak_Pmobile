import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:posttest7_erickapriansyah_2009106110/cart.dart';
import 'package:posttest7_erickapriansyah_2009106110/constants.dart';
import 'package:posttest7_erickapriansyah_2009106110/detail_page.dart';
import 'package:posttest7_erickapriansyah_2009106110/landing_page.dart';
import 'package:posttest7_erickapriansyah_2009106110/order.dart';

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
              onTap: () => Get.to(Cart()),
            ),
            SizedBox(
              height: 75,
            ),
            ListTile(
                leading: Icon(Icons.flight_land),
                title: Text("Kembali ke Landing Page"),
                onTap: () => Get.to(LandingPage()))  
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

