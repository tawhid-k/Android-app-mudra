import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mudra/styles/fontStyle.dart';
import '/../styles/buttonStyle.dart';
import 'buy_share.dart';
import 'create_alert.dart';
import 'linechart.dart';

class ShowChartDetails extends StatelessWidget {
  const ShowChartDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color lineColor = Color(0xff00b300);
    List<Color> gradientColors = [
      Color(0xff99ff99),
      Color(0xffccffcc),
      Colors.white,
    ];
    Container ColumnSeparatorLine() {
      return Container(
        margin: EdgeInsets.only(bottom: 20, top: 10),
        width: 400,
        height: 1.2,
        color: Colors.grey,
      );
    }
    Container StatesContainer(String a, String b) {
       return Container(
         padding: EdgeInsets.only(bottom: 15),
         width: MediaQuery.of(context).size.width/2.4,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Container(
               width: 80,
               child: Text(
                 maxLines: 3,
                 overflow: TextOverflow.ellipsis,
                 a, style: FontStyles.heading5,
               ),
             ),
             Container(
               width: 80,
               child: Text(
                 maxLines: 3,
                 overflow: TextOverflow.ellipsis,
                 b, style: FontStyles.heading5,
               ),
             )
           ],
         ),
       );
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(bottom: 65),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 10, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Company name',
                        style: FontStyles.heading2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '20560',
                            style: FontStyles.heading1,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'BDT',
                            style: FontStyles.heading3,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                              Icons.arrow_upward_outlined,
                            color: Colors.grey,
                          ),
                          Text(
                            '0.20 (0.19%) past 24 hours as of 4:07:36 PM',
                            style: FontStyles.listDetails,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                //Column for the line chart
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  //todo: Make data line thinner
                  child: LineChart(
                      LineChartData(
                          lineTouchData: lineTouchData,
                          titlesData: titlesData,
                          gridData: FlGridData(
                            show: false,
                          ),
                          borderData: FlBorderData(
                            show: false,
                          ),
                          lineBarsData: [
                            LineChartBarData(
                              color: lineColor,
                              barWidth: 1,
                              dotData: FlDotData(
                                show: false,
                              ),
                              belowBarData: BarAreaData(
                                show: true,
                                //todo: Make sure to put alpha or gradient
                                color: lineColor.withAlpha(50),
                                gradient: LinearGradient(
                                  colors: gradientColors
                                      .map((color) => color.withOpacity(0.8))
                                      .toList(),
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              isCurved: false,
                              spots: generateSampleData(),
                            )
                          ]
                      )
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        //todo: make 1D, 1W, 1Y functionable
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              '1D',
                              style: FontStyles.heading5,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              '1W',
                              style: FontStyles.heading5,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              '1M',
                              style: FontStyles.heading5,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              '3M',
                              style: FontStyles.heading5,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              '1Y',
                              style: FontStyles.heading5,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              '2Y',
                              style: FontStyles.heading5,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:30),
                        child: Text(
                          'Stats',
                          style: FontStyles.heading2,
                        ),
                      ),
                      ColumnSeparatorLine(),
                      Container(
                        //Row for states
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //First Table Column
                              children: [
                                StatesContainer('Last Trading Price:', '17.42'),
                                StatesContainer('Last Update:', '3:00 PM'),
                                StatesContainer('Change:', '0.00%'),
                                StatesContainer('Opening Price:', '22.80'),
                                StatesContainer('Yesterday\'s Closing Price:', '22.80'),
                                StatesContainer('MKT Cap:', '27,373.834 (mn)')
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //Second Table Column
                              children: [
                                StatesContainer('Closing Price:', '22:80'),
                                StatesContainer('Day\'s Range', '22.70 - 22.90'),
                                StatesContainer('Day\'s Value (mn)', '26.01'),
                                StatesContainer('52W Low: ', '21.70'),
                                StatesContainer('52W High: ', '30.60'),
                                StatesContainer('Day\'s Volume (Nos.)',	'1,140,885.00'),
                                StatesContainer('Day\'s Trade (Nos.)',	'188'),

                              ],
                            )
                          ],
                        )
                      ),
                      //Alert Button
                      Container(
                        //Alert title and button
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alerts',
                              style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Nunito-bold',
                              fontWeight: FontWeight.w600,
                             ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Receive a one-time notification for this stock when your conditions are met',
                              style: FontStyles.listDetails,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //todo: Change the border color to black of the outline button
                            OutlinedButton(
                              onPressed: () {
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const CreateAlert()),
                                );
                              },
                              style: ButtonStyles.outlinedButtonStyle1(context),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.add, color: Colors.black,),
                                  Text(
                                      'Create an alert',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Nunito-bold',
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const BuyShare()),
              );
            },
            /*onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ShowChartDetails()),
              );
            },*/
            style: ButtonStyles.elevatedButtonStyle1(context),
          child: const Text(
              'Buy',
            style: TextStyle(
              fontFamily: 'Nunito-bold',
              fontSize: 23,
              color: Colors.white,
            ),
          )
        ),
      ),
    );
  }
  FlTitlesData get titlesData => FlTitlesData(
    bottomTitles: AxisTitles(drawBehindEverything: false),
    rightTitles: AxisTitles(drawBehindEverything: false),
    topTitles: AxisTitles(drawBehindEverything: false),
    leftTitles: AxisTitles(drawBehindEverything: false),
  );
  LineTouchData get lineTouchData => LineTouchData(
    handleBuiltInTouches: true,
    touchTooltipData: LineTouchTooltipData(
      tooltipBgColor: Colors.black.withOpacity(0.8),
    ),
  );
  static List<FlSpot> generateSampleData() {
    final List<FlSpot> result = [];
    final numPoints = 80;
    final maxY = 6;
    double prev = 0;
    for (int i=1; i<numPoints; i++) {
      final next = prev/1.3 + Random().nextInt(3).toDouble() /* % -1000 * i*/ +
          Random().nextDouble() * maxY / 10;
      prev = next;
      result.add(FlSpot(i.toDouble(), next));
    }
    return result;
  }
}
