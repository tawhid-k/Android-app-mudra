import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ExtraMessageBox extends StatelessWidget {
  const ExtraMessageBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 2),
        padding: const EdgeInsets.fromLTRB(20, 15, 10, 25),
        height: 115,
        width: MediaQuery.of(context).size.width/1.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Color(0xff8c8c8c).withOpacity(0.5)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                  Text(
                    'Boost your investment journey',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Nunito-bold',
                      color: Color(0xff4d4d4d),
                    ),
                  ),
                  Text(
                    'Check what suits you the best and invest!',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Nunito',
                      color: Color(0xff808080),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            LinearPercentIndicator(
              width: MediaQuery.of(context).size.width/1.25,
              animation: true,
              lineHeight: 15.0,
              animationDuration: 2500,
              percent: 0.8,
              center: const Text(
                "80.0%",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12
                ),
              ),
              barRadius: const Radius.circular(30),
              progressColor: Color(0xff0040ff).withOpacity(0.9),
            ),
          ],
        ),
      ),
    );
  }
}
