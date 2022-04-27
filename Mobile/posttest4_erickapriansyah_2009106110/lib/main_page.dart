import 'package:flutter/material.dart';
import 'package:posttest4_erickapriansyah_2009106110/constans.dart';
import 'package:posttest4_erickapriansyah_2009106110/header.dart';
import 'package:posttest4_erickapriansyah_2009106110/landing_page.dart';
import 'package:posttest4_erickapriansyah_2009106110/order.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
          child: Column(
        children: [Header(size: size)],
      )),
    );
  }
}
