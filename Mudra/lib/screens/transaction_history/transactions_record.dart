import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:mudra/styles/fontStyle.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  Widget ColumnSeparatorLine() {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 10),
      width: 400,
      height: 1.2,
      color: Colors.grey,
    );
  }

  List _items = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('lib/screens/transaction_history/data.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget ColumnSeparatorLine() {
      return Container(
        margin: EdgeInsets.only(bottom: 10, top: 20),
        width: 400,
        height: 1.2,
        color: Colors.grey,
      );
    }
    readJson();
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recent',
                style: FontStyles.heading2,
              ),
              SizedBox(
                height: 25,
              ),
              _items.isNotEmpty
                  ? Expanded(
                    child: ListView.builder(
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        _items[index]["company"],
                                        style: FontStyles.heading3,
                                      ),
                                      Spacer(),
                                      Text(
                                        _items[index]["amount"].toString() + " BDT",
                                        style: FontStyles.heading3,
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "personal: "+_items[index]["date"],
                                        style: FontStyles.listDetails,
                                      ),
                                      Spacer(),
                                      Text(
                                        "Market buy",
                                        style: FontStyles.listDetails,
                                      )
                                    ],
                                  ),
                                  ColumnSeparatorLine(),
                                ],
                              ),
                            ),
                          ],
                          /*child: ListTile(
                            leading: Text(_items[index]["company"]),
                            title: Text(_items[index]["date"]),
                            subtitle: Text(_items[index]["amount"]),
                          ),*/
                        );
                      },
                    ),
                )
                  : Container()
            ],
          ),
        ),
      )
    );
  }
}
/*

Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Load Data'),
              onPressed: readJson,
            ),

            // Display the data loaded from sample.json
            _items.isNotEmpty
                ? Expanded(
                  child: ListView.builder(
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(10),
                        child: ListTile(
                          leading: Text(_items[index]["company"]),
                          title: Text(_items[index]["date"]),
                          subtitle: Text(_items[index]["amount"]),
                        ),
                      );
                    },
                  ),
              )
                : Container()
          ],
        ),
      ),
 */