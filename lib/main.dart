import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:becbro/screens/login_screen.dart';
import 'package:becbro/screens/splash.dart';
import 'package:becbro/screens/MainPage.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
@override
  void initState() {
    super.initState();
    Future.delayed(Duration(
      seconds: 2),
          (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen(),
      ),
      );
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: MainPage(),
    );
  }
}