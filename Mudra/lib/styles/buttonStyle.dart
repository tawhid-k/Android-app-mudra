import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyle outlinedButtonStyle1(context) {
    return OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.black),
        fixedSize: Size(MediaQuery.of(context).size.width, 50),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)));
  }
  static ButtonStyle elevatedButtonStyle1(context) {
    return ElevatedButton.styleFrom(
      backgroundColor: Color(0xff262626),
        fixedSize: Size(MediaQuery.of(context).size.width, 58),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)));
  }
}