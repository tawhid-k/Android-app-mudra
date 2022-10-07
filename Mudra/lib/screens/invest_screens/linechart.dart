import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartGenerator extends StatelessWidget {
  const LineChartGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color lineColor = Color(0xff006600);
    return LineChart(
          LineChartData(
              lineTouchData: LineTouchData(
                handleBuiltInTouches: false,
              ),
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
                  barWidth: 2,
                  dotData: FlDotData(
                    show: false,
                  ),
                  //todo: Show gradient below the graph
                  /*belowBarData: BarAreaData(
                    show: true,
                    color: lineColor.withAlpha(50),
                  ),*/
                  //todo: Shows smooth graph if true,
                  isCurved: false,
                  spots: generateSampleData(),
                )
              ]
          )
      );
  }
  FlTitlesData get titlesData => FlTitlesData(
    bottomTitles: AxisTitles(drawBehindEverything: false),
    rightTitles: AxisTitles(drawBehindEverything: false),
    topTitles: AxisTitles(drawBehindEverything: false),
    leftTitles: AxisTitles(drawBehindEverything: false),
  );
  static List<FlSpot> generateSampleData() {
    final List<FlSpot> result = [];
    final numPoints = 50;
    final maxY = 6;
    double prev = 0;
    for (int i=1; i<numPoints; i++) {
      final next = prev/2 + Random().nextInt(3).toDouble() % -1000 * i +
          Random().nextDouble() * maxY / 10;
      prev = next;
      result.add(FlSpot(i.toDouble(), next));
    }
    return result;
  }
}
