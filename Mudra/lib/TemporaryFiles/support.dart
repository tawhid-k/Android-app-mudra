import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: Column(
               children: const [
                 Text(
                  'Hello',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                 ),
                 Padding(
                   padding: EdgeInsets.only(top: 100),
                   child: Text(
                     'World',
                     style: TextStyle(fontSize: 20, color: Colors.white),
                   ),
                 ),
               ],
              )
            )
          ],
        )
      ),
    );
  }
}
