import 'package:flutter/material.dart';
import 'package:mudra/styles/fontStyle.dart';
import 'add_funds/account_info.dart';

class Move extends StatelessWidget {
  const Move({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 30, 15, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title(), SizedBox(height: 50),
              addMoney(context),
              SizedBox(height: 30),
              withdrawMoney(context),
            ],
          ),
        ),
      ),
    );
  }
  Column title() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Move',
          style: FontStyles.heading3,
        ),
        const Text(
            'Add or withdraw your money within just a click!',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
        ),
      ],
    );
  }
  Center addMoney(context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AccountInfo()));
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.black, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width/1.2,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,  top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Add funds',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Nunito-bold',
                        color: Colors.black
                      ),
                    ),
                    Text(
                      'Add money to your account',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Icon(
                Icons.account_balance_wallet,
                size: 60,
                color: Colors.black,
              )
            ],
            //Add money Icon
          ),
        ),
      ),
    );
  }
  Center withdrawMoney(context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => const AccountInfo()));
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.black, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width/1.2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,  top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Withdraw',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Nunito-bold',
                          color: Colors.black
                      ),
                    ),
                    Text(
                      'Withdraw money from your account',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Icon(
                Icons.money,
                size: 60,
                color: Colors.black,
              )
            ],
            //Add money Icon
          ),
        ),
      ),
    );
  }
}
