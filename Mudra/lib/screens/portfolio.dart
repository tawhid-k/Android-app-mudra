import 'dart:convert';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mudra/screens/invest_screens/linechart.dart';
import 'package:mudra/styles/fontStyle.dart';
import 'portfolio_screens/portfolio_linechart.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);
  @override
  State<Portfolio> createState() => _PortfolioState();
}



class _PortfolioState extends State<Portfolio> {
  List _items = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('lib/Data/portfolio_records.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }
  List<Color> finalColor = DataSets.generateColor(30);
  List<List<FlSpot>> sampleDataPoints = DataSets.generateSampleData(30);
  @override
  Widget build(BuildContext context) {
    int idx = 0;
    readJson();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Holdings',
                style: FontStyles.heading2,
              ),
              const SizedBox(
                height: 30,
              ),
              _items.isNotEmpty
              ? Expanded(
                child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _items[index]["company"],
                                  style: FontStyles.heading4,
                                ),
                                Text(
                                  _items[index]["company full name"],
                                  style: FontStyles.listDetails,
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              width: MediaQuery.of(context).size.width/3.5,
                              height: 50,
                              child: PortfolioLineChart(pointsList: this.sampleDataPoints[idx++], lineColor: this.finalColor[idx++]),
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  _items[index]["price"],
                                  style: FontStyles.heading4,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_downward,
                                      size: 18,
                                      color: Colors.red[700],
                                    ),
                                    Text(
                                      _items[index]["change"],
                                      style: TextStyle(
                                        fontFamily: 'Nunito-bold',
                                        color: Colors.red[700],
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        ColumnSeparatorLine(),
                      ],
                    );
                  },
                ),
              ) : Container(),
            ],
          ),
        ),
      ),
    );
  }
  Container ColumnSeparatorLine() {
    return Container(
      margin: EdgeInsets.only(bottom: 30, top: 30),
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