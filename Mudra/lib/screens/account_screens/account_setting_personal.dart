import 'package:flutter/material.dart';
import 'package:mudra/styles/fontStyle.dart';

class AccountSettingPersonal extends StatefulWidget {
  const AccountSettingPersonal({Key? key}) : super(key: key);

  @override
  State<AccountSettingPersonal> createState() => _AccountSettingPersonalState();
}

class _AccountSettingPersonalState extends State<AccountSettingPersonal> {
  Widget ColumnSeparatorLine() {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 20),
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
                  'Account information',
                style: FontStyles.heading2,
              ),
              ColumnSeparatorLine(),
              Text(
                'BO Account',
                style: FontStyles.heading3,
              ),
              Text(
                'Account number: xxxxx-xxxxx',
                style: FontStyles.listDetails,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Account figure',
                style: FontStyles.heading2,
              ),
              ColumnSeparatorLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Net deposits',
                    style: FontStyles.heading3,
                  ),
                  Text(
                    '0.00 BDT',
                    style: FontStyles.heading3,
                  )
                ],
              ),
              ColumnSeparatorLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Available to trade',
                    style: FontStyles.heading3,
                  ),
                  Text(
                    '0.00 BDT',
                    style: FontStyles.heading3,
                  )
                ],
              ),
              ColumnSeparatorLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Available for withdrawal',
                    style: FontStyles.heading3,
                  ),
                  Text(
                    '0.00 BDT',
                    style: FontStyles.heading3,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text(
                    'Documents',
                    style: FontStyles.heading2,
                  )
                ],
              ),
              ColumnSeparatorLine(),
              Text(
                'Account documents',
                style: FontStyles.heading3,
              ),
              const Spacer(),
              Text(
                'Close this account',
                style: FontStyles.heading3,
              ),
              ColumnSeparatorLine(),
            ],
          ),
        ),
      ),
    );
  }
}
