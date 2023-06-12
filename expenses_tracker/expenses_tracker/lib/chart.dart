import 'package:expenses_tracker/chartbar.dart';
import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransaction; // List of recent transactions
  Chart(this.recentTransaction);

  List<Map<String, Object>> get groupedTransactionValues {
    // Generate a list of maps representing the grouped transaction values
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index), // Calculate the date for each day in the past week
      );

      var totalSum = 0.0; // Total sum of transactions for each day
      for (var i = 0; i < recentTransaction.length; i++) {
        // Iterate through recent transactions
        if (recentTransaction[i].dateTime.day == weekDay.day &&
            recentTransaction[i].dateTime.month == weekDay.month &&
            recentTransaction[i].dateTime.year == weekDay.year) {
          // Check if the transaction matches the current day
          totalSum = totalSum + recentTransaction[i].amount; // Add the transaction amount to the total sum
        }
      }

      print(DateFormat.E().format(weekDay)); // Print the formatted weekday name (e.g., "Mon")
      print(totalSum); // Print the total sum for the day

      return {"day": DateFormat.E().format(weekDay), "amount": totalSum};
    });
  }

  double get totalSpending {
    // Calculate the total spending by summing up the amounts in groupedTransactionValues
    return groupedTransactionValues.fold(0.0, (sum, item) {
      return sum + (item['amount'] as double);
    });
  }

  @override
  Widget build(BuildContext context) {
    print(groupedTransactionValues); // Print the grouped transaction values
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: groupedTransactionValues.map((data) {
          // Create a ChartBar widget for each grouped transaction data
          return ChartBar(
            data['day'].toString(), // Pass the day label as a string
            data['amount'] as double, // Pass the amount as a double
            (data['amount'] as double) / totalSpending, // Calculate the spending percentage
          );
        }).toList(),
      ),
    );
  }
}
