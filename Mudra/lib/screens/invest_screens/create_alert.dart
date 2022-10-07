import 'package:flutter/material.dart';
import 'package:mudra/styles/fontStyle.dart';

import '../../styles/buttonStyle.dart';

class CreateAlert extends StatelessWidget {
  const CreateAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Container ColumnSeparatorLine() {
      return Container(
        margin: EdgeInsets.only(bottom: 30, top: 30),
        width: MediaQuery.of(context).size.width,
        height: 1.2,
        color: Colors.grey,
      );
    }
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
          child: ListView(
            children: [
              //Alert Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Set an alert for Company',
                    style: FontStyles.heading2,
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Receive notifications for price changes and more.',
                    style: FontStyles.listDetails,
                  ),
                  SizedBox(height: 30),
                ],
              ),
              //Options
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Price', style: FontStyles.heading3,),
                        //todo: Add radio button
                      ],
                    ),
                    ColumnSeparatorLine(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Percentage increase', style: FontStyles.heading3,),
                        //todo: Add radio button
                      ],
                    ),
                    ColumnSeparatorLine(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Percentage decrease', style: FontStyles.heading3,),
                        //todo: Add radio button
                      ],
                    ),
                    ColumnSeparatorLine(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Daily volatility', style: FontStyles.heading3,),
                        //todo: Add radio button
                      ],
                    ),
                    ColumnSeparatorLine(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Daily schedule', style: FontStyles.heading3,),
                        //todo: Add radio button
                      ],
                    ),
                    ColumnSeparatorLine(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('52 Week High/Low', style: FontStyles.heading3,),
                        //todo: Add radio button
                      ],
                    ),
                    ColumnSeparatorLine(),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 20),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
