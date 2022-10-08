import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, top: 15),

      child: Column(
        children: [
          Text(
            'News',
            style: TextStyle(
              fontSize: 22,
              color: Color(0xff333333),
              fontFamily: 'Nunito-bold',
            ),
          ),
        ],
      ),
    );
  }
}
