import 'package:flutter/material.dart';

class TopButtons extends StatelessWidget {
  final PageController controller;
  const TopButtons({Key? key, required this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            controller.animateToPage(0, duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff262626),
            //fixedSize: Size(30, 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)),
          ),
          child: const Text(
            'Holdings',
            style: TextStyle(
              color: Colors.white,
            ),
            //style: FontStyles.heading5,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            controller.animateToPage(1, duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff262626),
            //fixedSize: Size(30, 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)),
          ),
          child: const Text(
            'Watchlist',
            style: TextStyle(
              color: Colors.white,
            ),
            //style: FontStyles.heading5,
          ),
        ),
      ],
    );
  }
}
