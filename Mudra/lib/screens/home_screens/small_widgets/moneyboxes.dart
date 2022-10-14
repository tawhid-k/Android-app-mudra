import 'package:flutter/material.dart';

class MoneyBoxes extends StatelessWidget {
  const MoneyBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(top: 30, bottom: 10),
        child: Row(
          children: [
             MoneyBoxWidgets.myWallet(context),
             MoneyBoxWidgets.myInvestments(context),
          ],
        ),
      )
    );
  }
}

class MoneyBoxWidgets {
  static Container myWallet(context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      width: MediaQuery.of(context).size.width/1.5,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xff1a53ff).withOpacity(0.9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const[
          Text(
            'My Wallet',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Text(
            'Balance',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
          Text(
              '15,000 BDT',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Text(
            'Invest now!',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
  static Container myInvestments(context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      width: MediaQuery.of(context).size.width/1.5,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xffcc6600).withOpacity(0.9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Investments',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          const Text(
            '45,000 BDT',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          Row(
            children: const [
              Icon(
                Icons.arrow_upward,
                color: Colors.white,
                size: 17,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '11.96 BDT all time',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

