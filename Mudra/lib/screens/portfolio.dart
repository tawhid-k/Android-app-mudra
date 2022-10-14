import 'package:flutter/material.dart';
import 'package:mudra/styles/fontStyle.dart';
import '../TemporaryFiles/Test2.dart';
import '../TemporaryFiles/Test.dart';
import 'portfolio_screens/portfolio_holdings.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);
  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int curIndex = 0;
  final PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Portfolio',
                style: FontStyles.heading2,
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _controller.animateToPage(0, duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
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
                      _controller.animateToPage(1, duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
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
              ),
              const SizedBox(
                height: 30,
              ),
              Flexible(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    Test(),
                    Test2(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
