import 'package:flutter/material.dart';
import 'package:mudra/screens/profile_screens/editIdentityInformation.dart';
import 'package:mudra/styles/fontStyle.dart';

class IdentityInformation extends StatefulWidget {
  const IdentityInformation({Key? key}) : super(key: key);

  @override
  State<IdentityInformation> createState() => _IdentityInformationState();
}

class _IdentityInformationState extends State<IdentityInformation> {
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
          padding: EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //Upper Part
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Identity information',
                      style: FontStyles.heading2,
                    ),
                    Text(
                      'To update this information you\'ll need to upload a piece of ID.',
                      style: FontStyles.listDetails,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'First name',
                      style: FontStyles.identifier,
                    ),
                    Text(
                      'Golam Mostafa',
                      style: FontStyles.heading4,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Last name',
                      style: FontStyles.identifier,
                    ),
                    Text(
                      'Amit',
                      style: FontStyles.heading4,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Date of birth',
                      style: FontStyles.identifier,
                    ),
                    Text(
                      '2000/03/01',
                      style: FontStyles.heading4,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'National ID (NID)',
                      style: FontStyles.identifier,
                    ),
                    Text(
                      'xxxx-xxxx',
                      style: FontStyles.heading4,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ColumnSeparatorLine(),
                  ],
                ),
              ),
              Spacer(),
              Container(
                //For ElevatedButton
                width: 500,
                height: 70,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditIdentityInformation()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff333333),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60.0)
                    ),
                  ),
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      fontFamily: 'Nunito-bold',
                      fontSize: 20
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
