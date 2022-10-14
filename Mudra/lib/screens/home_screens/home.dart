import 'package:flutter/material.dart';
import 'small_widgets/welcome.dart';
import 'small_widgets/moneyboxes.dart';
import 'small_widgets/extra_message_box.dart';
import 'small_widgets/trending_choices.dart';
import 'small_widgets/exploring_mudra.dart';
import 'small_widgets/join_the_community.dart';
import 'small_widgets/news.dart';

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
          padding: const EdgeInsets.fromLTRB(10, 25, 10, 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Welcome(),
                MoneyBoxes(),
                ExtraMessageBox(),
                TrendingChoices(),
                ExploringMudra(),
                JoinTheCommunity(),
                News(),
              ]
            ),
          )
        ),
      ),
    );
  }
}
