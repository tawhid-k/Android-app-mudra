import 'package:flutter/material.dart';
import 'package:mudra/screens/profile_screens/identityInformation.dart';
import 'package:mudra/styles/fontStyle.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
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
        child: DraggableScrollableSheet(
            maxChildSize: 1,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                  controller: scrollController,
                  child:
                  Container(
                    padding: EdgeInsets.only(top: 0, left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Personal Details
                            Text(
                              'Personal details',
                              style: FontStyles.heading2,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (
                                      context) => const IdentityInformation()),
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Identity information',
                                    style: FontStyles.heading3,
                                  ),
                                  Text(
                                    'Full legal name, date of birth, social insurance number and citizenship',
                                    style: FontStyles.listDetails,
                                  ),
                                ],
                              ),
                            ),
                            ColumnSeparatorLine(),
                            Text(
                              'Preferred name',
                              style: FontStyles.heading3,
                            ),
                            Text(
                              'Golam Mostafa',
                              style: FontStyles.listDetails,
                            ),
                            ColumnSeparatorLine(),
                            Text(
                              'Gender',
                              style: FontStyles.heading3,
                            ),
                            Text(
                              'Man',
                              style: FontStyles.listDetails,
                            ),
                            SizedBox(
                              height: 50,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Contact
                            Text(
                              'Contact',
                              style: FontStyles.heading2,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Email',
                              style: FontStyles.heading3,
                            ),
                            Text(
                              'amit.mostafa8@gmail.com',
                              style: FontStyles.listDetails,
                            ),
                            ColumnSeparatorLine(),
                            Text(
                              'Phone number',
                              style: FontStyles.heading3,
                            ),
                            Text(
                              'xxxxx-xxxxx',
                              style: FontStyles.listDetails,
                            ),
                            ColumnSeparatorLine(),
                            Text(
                              'Residential address',
                              style: FontStyles.heading3,
                            ),
                            Text(
                              'xxxxx-xxxxx',
                              style: FontStyles.listDetails,
                            ),
                            ColumnSeparatorLine(),
                            Text(
                              'Mailing address',
                              style: FontStyles.heading3,
                            ),
                            Text(
                              'xxxxx-xxxxx',
                              style: FontStyles.listDetails,
                            ),
                            SizedBox(
                              height: 50,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //Employment
                          children: [
                            Text(
                              'Employment',
                              style: FontStyles.heading2,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Status',
                              style: FontStyles.heading3,
                            ),
                            Text(
                              'Student',
                              style: FontStyles.listDetails,
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        )
                      ],
                    ),
                  )
              );
            }
        ),
      ),
    );
  }
}
