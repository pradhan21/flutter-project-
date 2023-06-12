import 'package:expenses_tracker/chart.dart';
import 'package:expenses_tracker/new_transaction.dart';
import 'package:expenses_tracker/user_transactions.dart';
import 'package:flutter/rendering.dart';

import './transaction.dart';
import 'package:flutter/material.dart';
import './transaction_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Transaction> transactionList = [
    // List of initial transactions
    Transaction(
        id: "1", title: "Recharge", amount: 100, dateTime: DateTime.now()),
    Transaction(id: '1', title: "Lunch", amount: 100, dateTime: DateTime.now()),
  ];

  List<Transaction> get recentTransaction {
    // Get the list of recent transactions (within the past 7 days)
    return transactionList.where((tx) {
      return tx.dateTime.isAfter(
        DateTime.now().subtract(
          Duration(days: 7),
        ),
      );
    }).toList();
  }

  void _addTransaction(String title, double amount) {
    // Add a new transaction to the transactionList
    var transaction = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        dateTime: DateTime.now());
    setState(() {
      transactionList.add(transaction);
    });
  }

  void _startAddNewTransaction(BuildContext context) {
    // Show a bottom sheet when the user wants to add a new transaction
    print("Hello");
    showModalBottomSheet(
      context: context,
      builder: (bCtx) {
        return GestureDetector(
          onTap: () {},
          child: NewTransaction(_addTransaction),
          // NewTransaction widget is used to add a new transaction to the transactionList
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: 'Personal Expenses',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        hintColor: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personal Expenses"),
          actions: <Widget>[
            IconButton(
              onPressed: () => _startAddNewTransaction(context),
              icon: Icon(Icons.add),
            ),
          ],
        ),
        body: Column(
          children: [
            Chart(recentTransaction), // Display the chart of recent transactions
            TransactionList(transactionList), // Display the list of all transactions
          ],
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () => _startAddNewTransaction(context),
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
