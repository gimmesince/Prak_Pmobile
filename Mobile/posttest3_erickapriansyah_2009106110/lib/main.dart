// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:posttest3_erickapriansyah_2009106110/Home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'2009106110_Erick Apriansyah',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}