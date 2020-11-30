import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Container(
          color: Colors.greenAccent,
child: RaisedButton(
  child: const Text('Show toast'),
  onPressed: () {
    Fluttertoast.showToast(
        msg: "This is Toast message",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM ,// also possible "TOP" and "CENTER"
        backgroundColor: Colors.black,
        textColor: Colors.white,
    );
  },
),
        ),
      ),
    );
  }
}
