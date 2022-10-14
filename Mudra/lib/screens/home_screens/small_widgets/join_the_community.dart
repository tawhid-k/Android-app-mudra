import 'package:flutter/material.dart';
import '../../../styles/buttonStyle.dart';

class JoinTheCommunity extends StatelessWidget {
  const JoinTheCommunity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 15, top: 30),

        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff404040),
                  fixedSize: Size(MediaQuery.of(context).size.width, 42),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: const Text(
                'Join the community',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  //color: Color(0xff333333),
                  fontFamily: 'Nunito-bold',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
