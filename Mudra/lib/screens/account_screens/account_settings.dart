import 'package:flutter/material.dart';
import 'package:mudra/screens/account_screens/account_setting_personal.dart';
import 'package:mudra/styles/fontStyle.dart';

class AccountsSettings extends StatefulWidget {
  const AccountsSettings({Key? key}) : super(key: key);

  @override
  State<AccountsSettings> createState() => _AccountsSettingsState();
}

class _AccountsSettingsState extends State<AccountsSettings> {
  Widget ColumnSeparatorLine() {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 10),
      width: 400,
      height: 1.2,
      color: Colors.grey,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mudra funds',
                style: FontStyles.heading2,
              ),
              ColumnSeparatorLine(),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => const AccountSettingPersonal()),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personal account',
                        style: FontStyles.heading3,
                      ),
                      Text(
                        'Account value: 0.00 BDT',
                        style: FontStyles.listDetails,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Joint account',
                      style: FontStyles.heading3,
                    ),
                    Text(
                      'Account value: 0.00 BDT',
                      style: FontStyles.listDetails,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
