import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LineSeparator {
  Container columnSeparatorLine(context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 10),
      width: MediaQuery.of(context).size.width,
      height: 1.2,
      color: Colors.grey,
    );
  }
}