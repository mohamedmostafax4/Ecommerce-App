import 'dart:async';

import 'package:ecommerce/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async {
      await Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Text(
                'بيكيا',
                style: GoogleFonts.arefRuqaaInk(
                    color: Colors.black, fontSize: 100),
              ),
              SizedBox(
                height: 179.5,
              ),
              Image.asset(
                  'images/—Pngtree—palestine flag waving border_8413271.png')
            ],
          ),
        ),
      ),
    );
  }
}
