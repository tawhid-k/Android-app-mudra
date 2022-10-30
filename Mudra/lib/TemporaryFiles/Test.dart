import 'dart:convert';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:mudra/screens/portfolio_screens/portfolio_linechart.dart';
import '../../styles/fontStyle.dart';
import '../screens/portfolio_screens/portfolio_particular_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List _items = [];
  List<Color> finalColor = DataSets.generateColor(30);
  List<List<FlSpot>> sampleDataPoints = DataSets.generateSampleData(30);
  @override
  Widget build(BuildContext context) {
    Future<void> readJson() async {
      final String response = await rootBundle.loadString('lib/Data/portfolio_records.json');
      final data = await json.decode(response);
      if (mounted) {
        setState(() {
          _items = data["items"];
        });
      }
    }

    //TODO: Remember to implement initState readJson in graph pages
    List<Color> mylist = [Colors.green, Colors.amber, Colors.blue, Colors.red, Colors.orange, Colors.lightGreen];
    TextStyle custom = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: mylist[Random().nextInt(mylist.length)]
    );
    int idx = 0;
    readJson();
    return  _items.isNotEmpty
        ? ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _items.length - 5,
        itemBuilder: (context, index) {
          return Container(
            height: 80,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PortfolioParticularDetails(companyName: _items[index]["company"], price: _items[index]["price"].toString())));
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/3.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _items[index]["company"],
                                  style: FontStyles.heading4,
                                ),
                                Text(
                                  _items[index]["company full name"],
                                  style: FontStyles.listDetails,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/3.5,
                            height: 30,
                            child: PortfolioLineChart(pointsList: this.sampleDataPoints[idx++], lineColor: this.finalColor[idx++]),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                _items[index]["price"].toString(),
                                style: FontStyles.heading4,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_downward,
                                    size: 16,
                                    color: Colors.red[700],
                                  ),
                                  Text(
                                    _items[index]["change"].toString(),
                                    style: TextStyle(
                                      fontFamily: 'Nunito-bold',
                                      color: Colors.red[700],
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                ColumnSeparatorLine(),
              ],
            ),
          );
        },
    ) : Container();
  }
  Container ColumnSeparatorLine() {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 20),
      width: MediaQuery.of(context).size.width,
      height: 1.2,
      color: Colors.grey,
    );
  }
}

class DataSets {
  static List<Color> generateColor(int len) {
    List<Color> lineColor = [];
    for(int j=0; j<len; j++) {
      final List<Color> colorList = [Colors.red, Color(0xff006600)];
      final Color sampleColor = colorList[Random().nextInt(2)];
      lineColor.add(sampleColor);
    }
    return lineColor;
  }
  static List<List<FlSpot>> generateSampleData(int len) {
    List<List<FlSpot>> samplePoints = [];
    for(int j=0; j<len; j++) {
      final List<FlSpot> result = [];
      final numPoints = 50;
      final maxY = 6;
      double prev = 0;
      for (int i=1; i<numPoints; i++) {
        final next = prev/2 + Random().nextInt(3).toDouble() /*% -1000 * i*/ +
            Random().nextDouble() * maxY / 10;
        prev = next;
        result.add(FlSpot(i.toDouble(), next));
      }
      samplePoints.add(result);
    }
    return samplePoints;
  }
}
