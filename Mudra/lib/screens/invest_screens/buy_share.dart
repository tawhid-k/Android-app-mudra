import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mudra/styles/fontStyle.dart';

import '../../styles/buttonStyle.dart';

class BuyShare extends StatefulWidget {
  const BuyShare({Key? key}) : super(key: key);

  @override
  State<BuyShare> createState() => _BuyShareState();
}

class _BuyShareState extends State<BuyShare> {
  int enteredNumber = 0;
  double estimaedCost = 0.00;
  double pricePerShare = 250.00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'How many shares of Random will you buy in your personal account?',
                  style: FontStyles.heading4,
                ),
                Center(
                  child: Container(
                    width: 300,
                    height: 200,
                    child: Center(
                      child: Text(
                        enteredNumber.toString(),
                        style: TextStyle(
                          fontSize: 60,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Price (Per share)', style: FontStyles.heading5,),
                        Text(pricePerShare.toString() + " BDT", style: FontStyles.heading5,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Estimated cost', style: FontStyles.heading5,),
                        Text(estimaedCost.toString() + " BDT", style: FontStyles.heading5,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Funds available', style: FontStyles.heading5,),
                        Text('30,000 BDT', style: FontStyles.heading5,)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //For number pad
                Container(
                  padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                  child: Column(
                    children: [
                      // 1, 2, 3
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          numberPadButton(1),
                          numberPadButton(2),
                          numberPadButton(3),
                        ],
                      ),
                      SizedBox(height: 30),
                      //4 5 6
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          numberPadButton(4),
                          numberPadButton(5),
                          numberPadButton(6),
                        ],
                      ),
                      SizedBox(height: 30),
                      // 7 8 9
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          numberPadButton(7),
                          numberPadButton(8),
                          numberPadButton(9),
                        ],
                      ),
                      SizedBox(height: 30),
                      // 0 back
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  ', style: FontStyles.numberPad,),
                          numberPadButton(0),
                          InkWell(
                            onTap: () {
                              setState(() {
                                double curNumber = enteredNumber / 10;
                                enteredNumber = curNumber.toInt();
                                estimaedCost = enteredNumber * pricePerShare;
                              });
                            },
                              child: Icon(Icons.backspace_outlined)
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                  style: ButtonStyles.elevatedButtonStyle1(context),
                  child: const Text(
                    'Buy',
                    style: TextStyle(
                      fontFamily: 'Nunito-bold',
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  InkWell numberPadButton(int number) {
    return InkWell(
        onTap: () {
          setState(() {
            enteredNumber = (enteredNumber * 10 + number);
            estimaedCost = enteredNumber * pricePerShare;
          });
        },
        child: Text(number.toString(), style: FontStyles.numberPad,)
    );
  }
}
