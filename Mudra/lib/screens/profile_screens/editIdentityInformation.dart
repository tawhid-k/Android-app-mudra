import 'package:flutter/material.dart';
import 'package:mudra/styles/fontStyle.dart';

class EditIdentityInformation extends StatefulWidget {
  const EditIdentityInformation({Key? key}) : super(key: key);

  @override
  State<EditIdentityInformation> createState() => _EditIdentityInformationState();
}
//ToDo: Edit identity information

class _EditIdentityInformationState extends State<EditIdentityInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          //reverse: true,
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //Identity information
                  children: [
                    Text(
                      'Identity information',
                      style: FontStyles.heading2,
                    ),
                    Text(
                      'To update this information you\'ll need to upload a piece of ID.',
                      style: FontStyles.listDetails,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  //Text Input Fields
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
                Column(
                  //Save changes elevated button
                ),
              ],
            )
          ),
        ),
      )
    );
  }
}
