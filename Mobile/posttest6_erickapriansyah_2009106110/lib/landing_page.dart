import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:posttest6_erickapriansyah_2009106110/main_page.dart';



class LandingPage extends StatelessWidget {
  const LandingPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      colors: [
                    Colors.black,
                    Colors.deepPurpleAccent,
                    Colors.red,
                    Colors.orange,
                    Colors.deepOrangeAccent,
                    Colors.orange
                  ])),
            ),
            Align(
              alignment: Alignment(-0.9, -1),
              child: Container(
                width: 320.0,
                height: 320.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(60, 211, 210, 210)),
              ),
            ),
            Align(
              alignment: Alignment(0.9, 1),
              child: Container(
                width: 320.0,
                height: 320.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white24),
              ),
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX:0 , sigmaY:0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 4,
                    height: MediaQuery.of(context).size.height * 2,
                    color: Colors.white38,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 8.0),
                          child: Row(
                            children: [
                              Spacer(),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MainPage()),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 6.0),
                                    child: Text(
                                      "Home",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,),
                                    ),
                                  )),
                              SizedBox(
                                width: 5.0,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Container(
                                margin: EdgeInsets.all(30.0),
                                width:
                                    MediaQuery.of(context).size.width * 0.020,
                                height:
                                    MediaQuery.of(context).size.width * 0.010,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Reve Laptop Store',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.07,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.start,
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      "Menjual Berbagai Kebutuhan Laptop High-end\nMulai dari ROG,TUF,dll.\ndengan desain yang mengesankan dan menarik.",
                                      style: TextStyle(),
                                    ),
                                    SizedBox(height: 5.0),
                                    Container(
                                      child: IconTheme(
                                        data: IconThemeData(
                                            color: Colors.white24, size: 12.0),
                                        child: Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                    FontAwesomeIcons.facebook)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                    FontAwesomeIcons.linkedin)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(FontAwesomeIcons
                                                    .instagram)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                    FontAwesomeIcons.twitter)),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(right: 16.0),
                                  width: MediaQuery.of(context).size.width * 1,
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: new AssetImage('images/laptop.png'),
                                  )),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}