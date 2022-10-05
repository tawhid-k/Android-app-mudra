import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color lineColor = Color(0xff33cc33);
    return Scaffold(
      body: LineChart(
        LineChartData(
          lineTouchData: lineTouchData,
          titlesData: titlesData,
          /*minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 10,*/
          gridData: FlGridData(
            show: false,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(
              color: lineColor,
              barWidth: 3,
              dotData: FlDotData(
                show: false,
              ),
              belowBarData: BarAreaData(
                show: true,
                color: lineColor.withAlpha(50),
              ),
              isCurved: true,
              spots: generateSampleData(),
            )
          ]
        )
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
    final numPoints = 60;
    final maxY = 6;
    double prev = 0;
    for (int i=1; i<numPoints; i++) {
      final next = prev/1.2 + Random().nextInt(3).toDouble() % -1000 * i +
      Random().nextDouble() * maxY / 10;
      prev = next;
      result.add(FlSpot(i.toDouble(), next));
    }
    return result;
  }
}

/*
LineChart(
            LineChartData(
                minX: 0,
                maxX: 11,
                minY: 0,
                maxY: 10,
                gridData: FlGridData(
                  show: false,
                ),
                borderData: FlBorderData(
                  show: true,
                ),
                lineBarsData: [
                  LineChartBarData(
                    isCurved: true,
                    barWidth: 3,
                    spots: [
                      FlSpot(0, 3),
                      FlSpot(1, 6),
                      FlSpot(3, 5),
                      FlSpot(6, 8),
                      FlSpot(8, 5),
                      FlSpot(10, 9),
                      FlSpot(11, 6),
                    ],
                  )
                ]
            )
        ),
*/