import 'package:flutter/material.dart';
import 'package:mudra/screens/invest_screens/show_chart_details.dart';
import '/../../Common/Linechart_generator.dart';

class TrendingChoices extends StatefulWidget {
  const TrendingChoices({Key? key}) : super(key: key);

  @override
  State<TrendingChoices> createState() => _TrendingChoicesState();
}

class _TrendingChoicesState extends State<TrendingChoices> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Trending Choices',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff333333),
                      fontFamily: 'Nunito-bold',
                    ),
                  ),
                  Text(
                    'Most invested in the last week',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff666666),
                      fontFamily: 'Nunito-bold',
                    ),
                  ),

                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ShowChartDetails())
                );
              },
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                //color: Colors.black12,
                child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                         selectedIndex = index;
                      });
                    },
                  controller: PageController(viewportFraction: 0.5, initialPage: 1),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                      var scale = selectedIndex == index? 1.0 : 0.8;
                      return TweenAnimationBuilder(
                         tween: Tween(begin: scale, end: scale),
                         duration: const Duration(milliseconds: 350),
                         curve: Curves.ease,
                         builder: (context, value, child) {
                           return Transform.scale(
                             scale: value,
                             child: child,
                           );
                         },
                         child: getMy(),
                      );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Stack getMy() {
    return Stack(
      children: [
            Container(
            width: MediaQuery.of(context).size.width/2,
            padding: EdgeInsets.only(top: 20, bottom: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 2,
                color: Color(0xff737373).withOpacity(0.5),
              )
            ),
            child: LineChartGenerator(),
          ),
          Positioned(
            top: 10,
            left: 15,
            child: Row(
              children: const [
                Image(
                  image: AssetImage('lib/images/bkash.png'),
                  width: 70,
                  height: 30,
                )
              ],
            ),
          ),
        Positioned(
          bottom: 8,
          left: 10,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'BKash',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'BKash Limited',
                    style: TextStyle(
                      fontSize: 8,
                      color: Color(0xff808080),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 80,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.arrow_upward,
                    color: Color(0xff008000),
                    size: 15,
                  ),
                  Text(
                    '0.67%',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff008000),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ]
    );
  }
}
