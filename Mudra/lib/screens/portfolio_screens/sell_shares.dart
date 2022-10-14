import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mudra/styles/fontStyle.dart';

import '../../styles/buttonStyle.dart';

class SellShare extends StatefulWidget {
  const SellShare({Key? key}) : super(key: key);

  @override
  State<SellShare> createState() => _SellShareState();
}

class _SellShareState extends State<SellShare> {
  int enteredNumber = 0;
  double estimaedCost = 0.00;
  double pricePerShare = 250.00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 35, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How many shares of Random will you sell from your personal account?',
                style: FontStyles.heading4,
              ),
              Flexible(
                child: const SizedBox(
                  height: 20,
                ),
              ),
              Center(
                child: Container(
                  width: 300,
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
              Spacer(),
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
                      Text('Estimated value', style: FontStyles.heading5,),
                      Text(estimaedCost.toString() + " BDT", style: FontStyles.heading5,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Available shares', style: FontStyles.heading5,),
                      Text('30,000 BDT', style: FontStyles.heading5,)
                    ],
                  )
                ],
              ),
              Flexible(
                child: SizedBox(
                  height: 20,
                ),
              ),
              Spacer(),
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
                    SizedBox(height: MediaQuery.of(context).size.height/22),
                    //4 5 6
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        numberPadButton(4),
                        numberPadButton(5),
                        numberPadButton(6),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/22),
                    // 7 8 9
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        numberPadButton(7),
                        numberPadButton(8),
                        numberPadButton(9),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/22),
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
              Spacer(),
              Container(
                height: MediaQuery.of(context).size.height/20,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyles.elevatedButtonStyle1(context),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontFamily: 'Nunito-bold',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
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
