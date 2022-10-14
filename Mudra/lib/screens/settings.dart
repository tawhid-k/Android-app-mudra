import 'package:flutter/material.dart';
import '/styles/fontStyle.dart';
import 'profile_screens/profile.dart';
import 'account_screens/account_settings.dart';
import 'transaction_history/transactions_record.dart';
//todo: remove that imported file below

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
      child: ListView(
        children: [
          Text(
              "Settings",
            style: FontStyles.heading1,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 400,
            padding: EdgeInsets.only(left: 5, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 400,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const AccountsSettings()),
                      );
                    },
                    splashColor: Colors.green[200],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Accounts",
                          style: FontStyles.listText,
                        ),
                        Text(
                          "Account management & information",
                          style: FontStyles.listDetails,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                   margin: EdgeInsets.only(bottom: 15, top: 10),
                   width: 400,
                   height: 0.8,
                   color: Colors.black54,
                ),
                Container(
                  width: 400,
                  child: InkWell(
                    splashColor: Colors.green[200],
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Profile()),
                      );
                    },
                    highlightColor: Colors.green[200],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Profile",
                          style: FontStyles.listText,
                        ),
                        Text(
                          "Personal details",
                          style: FontStyles.listDetails,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15, top: 10),
                  width: 400,
                  height: 0.8,
                  color: Colors.black54,
                ),
                Container(
                  width: 400,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => const TransactionHistory()),
                      );
                    },
                    highlightColor: Colors.green[200],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Transaction history",
                        style: FontStyles.listText,
                        ),
                        Text(
                          "Financial statements & activities",
                          style: FontStyles.listDetails,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15, top: 10),
                  width: 395,
                  height: 0.8,
                  color: Colors.black54,
                ),
                Container(
                  width: 400,
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.green[200],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Legal',
                          style: FontStyles.listText,
                          ),
                          Text(
                            'Terms of use & privacy policy',
                            style: FontStyles.listDetails,
                          )
                        ],
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15, top: 10),
                  width: 395,
                  height: 0.8,
                  color: Colors.black54,
                ),
                Container(
                  width: 400,
                  child: InkWell(
                      onTap: () {
                      },
                      splashColor: Colors.green[200],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Support',
                            style: FontStyles.listText,
                          ),
                          Text(
                            'In-app support, Helpline',
                            style: FontStyles.listDetails,
                          )
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
