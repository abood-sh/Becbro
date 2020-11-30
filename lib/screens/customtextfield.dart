import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  bool issecured;

  final _formKey = GlobalKey<FormState>();

  CustomTextField({this.hint, this.issecured,});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: _formKey,
          child: TextFormField(obscureText: issecured,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(25),
                ),
                hintText: hint,
                hintStyle: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    color: Colors.black26,
                    fontWeight: FontWeight.w900),
                filled: true,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
        ));
  }
}