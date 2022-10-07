import 'package:flutter/material.dart';
import 'small_widgets/welcome.dart';
import 'small_widgets/moneyboxes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              children: const [
                Welcome(),
                MoneyBoxes(),
              ]
            ),
          )
        ),
      ),
    );
  }
}
