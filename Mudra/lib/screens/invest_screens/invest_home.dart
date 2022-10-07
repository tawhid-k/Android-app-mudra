import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mudra/screens/invest_screens/show_chart_details.dart';
import 'package:mudra/styles/fontStyle.dart';
import 'linechart.dart';

class InvestHome extends StatefulWidget {
  const InvestHome({Key? key}) : super(key: key);

  @override
  State<InvestHome> createState() => _InvestHomeState();
}

class _InvestHomeState extends State<InvestHome> {
  InkWell getLineChartChild() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ShowChartDetails()),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(top: 15, right: 15),
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2,
              color: Colors.black12,
            ),
          ),
          child: const Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 50),
            child: LineChartGenerator(),
          ),
        ),
      ),
    );
  }
  Padding seeAllBelow(String domain) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "See all $domain",
            textAlign: TextAlign.end,
            style: FontStyles.heading5,
          ),
          Icon(
              Icons.arrow_right_alt,
            size: 18,
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 40, right: 15),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Text(
              'Invest',
              style: FontStyles.heading2,
            ),
            Text(
              'You\'re just a click away!',
              style: FontStyles.heading2_details,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
              child: Container(
                height: 60,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Search name or symbol',
                      hintStyle: const TextStyle(
                        fontSize: 20,
                        color: Color(0xff595959),
                        fontFamily: 'Nunito-bold',
                        fontWeight: FontWeight.w600,
                      ),
                      prefixIcon: Container(
                        padding: EdgeInsets.all(15),
                        child: Icon(Icons.search),
                        width: 18,
                      )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: null,
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                      ),
                      child: const Text("Top 10 gainers"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: null,
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )
                        ),
                      ),
                      child: const Text("Top 10 losers"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: null,
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )
                        ),
                      ),
                      child: const Text("Top 20 sales"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: null,
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )
                        ),
                      ),
                      child: const Text("DSE 30"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: null,
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )
                        ),
                      ),
                      child: const Text("DSEX"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'See all top lists',
                      style: FontStyles.heading5,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            // Graph phase
            Text(
              'Engineering',
              style: FontStyles.investCategories,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  getLineChartChild(),
                  getLineChartChild(),
                  getLineChartChild(),
                  getLineChartChild(),
                ],
              ),
            ),
            seeAllBelow("engineering"),
            SizedBox(
              height: 30,
            ),
            Text(
              'Financial Institutions',
              style: FontStyles.investCategories,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  getLineChartChild(),
                  getLineChartChild(),
                  getLineChartChild(),
                  getLineChartChild(),
                ],
              ),
            ),
            seeAllBelow("financial institutions"),
            SizedBox(
              height: 30,
            ),
            Text(
              'Food & Allied',
              style: FontStyles.investCategories,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  getLineChartChild(),
                  getLineChartChild(),
                  getLineChartChild(),
                  getLineChartChild(),
                ],
              ),
            ),
            seeAllBelow("food & allied"),
            SizedBox(
              height: 30,
            ),
            Text(
              'Pharmaceuticals & Chemicals',
              style: FontStyles.investCategories,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  getLineChartChild(),
                  getLineChartChild(),
                  getLineChartChild(),
                  getLineChartChild(),
                ],
              ),
            ),
            seeAllBelow("pharmaceuticals & chemicals"),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
