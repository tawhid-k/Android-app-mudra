import 'dart:ffi';

class Transaction {
  String? companyName;
  String? date;
  String? amount;

  Transaction({this.companyName, this.date, this.amount});

  factory Transaction.fromJson(Map<String, dynamic> data) {
    return Transaction(
      companyName: data["company"],
      date: data["date"],
      amount: data["amount"],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "company": companyName,
      "date": date,
      "amount": amount,
    };
  }
}