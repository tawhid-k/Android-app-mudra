import 'package:flutter/material.dart';
import '/styles/fontStyle.dart';
import 'PersonalDetails.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profile',
                  style: FontStyles.heading2
                ),
                ColumnSeparatorLine(),
                InkWell(
                  onTap:() {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PersonalDetails()),
                    );
                  },
                  child: Text(
                    'My personal info',
                    style: FontStyles.heading3,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Security',
                  style: FontStyles.heading2,
                ),
                ColumnSeparatorLine(),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Quick access method',
                    style: FontStyles.heading3,
                  ),
                ),
                Text(
                  'None',
                  style: FontStyles.listDetails,
                ),
                ColumnSeparatorLine(),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Two-step verification',
                    style: FontStyles.heading3,
                  ),
                ),
                Text(
                  'Enabled',
                  style: FontStyles.listDetails,
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Preferences',
                  style: FontStyles.heading2,
                ),
                ColumnSeparatorLine(),
                Text(
                  'Appearance',
                  style: FontStyles.heading3,
                ),
                Text(
                  'Light',
                  style: FontStyles.listDetails,
                ),
                ColumnSeparatorLine(),
                Text(
                  'Manage notifications',
                  style: FontStyles.heading3,
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Support',
                  style: FontStyles.heading2,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ColumnSeparatorLine(),
                Padding(
                  padding: EdgeInsets.only(top: 3, bottom: 12),
                  child: Text(
                    'Delete profile',
                    style: FontStyles.heading3,
                  ),
                ),
                ColumnSeparatorLine(),
                Padding(
                  padding: EdgeInsets.only(top: 3, bottom: 12),
                  child: Text(
                    'Logout',
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Nunito-bold',
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
                  ),
                ),
                ColumnSeparatorLine(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
