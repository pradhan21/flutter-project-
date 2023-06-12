import 'dart:ffi';

import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import './transaction.dart';

class User_Transaction extends StatefulWidget {
  const User_Transaction({super.key});

  @override
  State<User_Transaction> createState() => _User_TransactionState();
}

class _User_TransactionState extends State<User_Transaction> {
  List<Transaction> transactionList = [
    // List of transactions
    Transaction(
        id: "1", title: "Recharge", amount: 100, dateTime: DateTime.now()),
    Transaction(id: '1', title: "Lunch", amount: 100, dateTime: DateTime.now()),
  ];

  void addTransaction(String title, double amount){
    // Function to add a new transaction
    var transaction = Transaction(id: DateTime.now().toString(), title: title, amount: amount, dateTime: DateTime.now());
    setState(() {
      transactionList.add(transaction); // Add the new transaction to the list
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(addTransaction), // Widget for adding new transactions
        TransactionList(transactionList), // Widget for displaying the list of transactions
      ],
    );
  }
}
