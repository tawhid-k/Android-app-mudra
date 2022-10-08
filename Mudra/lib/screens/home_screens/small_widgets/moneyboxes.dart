import 'package:flutter/material.dart';

class MoneyBoxes extends StatelessWidget {
  const MoneyBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(top: 50, bottom: 10),
        child: Row(
          children: [
             MoneyBoxWidgets.myWallet(),
             MoneyBoxWidgets.myInvestments(),
          ],
        ),
      )
    );
  }
}

class MoneyBoxWidgets {
  static Container myWallet() {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.fromLTRB(30, 20, 20, 20),
      width: 350,
      height: 170,
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
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Balance',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          Text(
              '15,000 BDT',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Text(
            'Invest now',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
  static Container myInvestments() {
    return Container(
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
      width: 350,
      height: 170,
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
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Balance',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          const Text(
            '45,000 BDT',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          Row(
            children: const [
              Icon(
                Icons.arrow_upward,
                color: Colors.white,
                size: 20,
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

