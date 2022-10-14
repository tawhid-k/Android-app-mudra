import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/../styles/fontStyle.dart';
import '/../styles/buttonStyle.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Good Afternoon!',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Nunito-bold',
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Icon(
          Icons.person,
          size: 25,
          color: Colors.black,
        ),
        SizedBox(
          width: 5,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff262626),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
          child: Row(
            children: const [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                )
              ),
            ],
          )
        )
      ],
    );
  }
}
