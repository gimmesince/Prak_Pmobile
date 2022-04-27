import 'package:flutter/material.dart';
import 'package:posttest4_erickapriansyah_2009106110/constans.dart';
import 'package:posttest4_erickapriansyah_2009106110/landing_page.dart';
import 'package:posttest4_erickapriansyah_2009106110/main_page.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}