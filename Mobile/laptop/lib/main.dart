import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pertemuan 1 C20',
      home:  Home(),
    );
  }
}

class  Home extends StatelessWidget {
  const  Home ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var panjang = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 10, 115, 252),
          leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: null,
        ),
        title: Text('Posttest 1 Erick Apriansyah'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Cari',
            onPressed: null,
          ),
        ],
        ),
        body: Center(
          child: Container(
            width: lebar,
            height: panjang ,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('pic/lap.png'),
                fit: BoxFit.fitWidth),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                Colors.green,
                Colors.red,
                Colors.blue,
              ],
              )
            ),
            padding: EdgeInsets.all(40.0),
            child: Text(
              'Penjualan Laptop Reve Store', 
              style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 30,
                ),
              ),
          ),
        ),
      );
  }
}

