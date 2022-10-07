import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PortfolioLineChart extends StatelessWidget {
  List<FlSpot> pointsList;
  Color lineColor;
  PortfolioLineChart({Key? key, required this.pointsList, required this.lineColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                spots: pointsList,
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
}
