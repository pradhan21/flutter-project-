import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChartBar extends StatelessWidget {
  final String label; // Label for the bar
  final double spendingAmount; // Amount spent
  final double spendingPctOfTotal; // Percentage of total spending

  ChartBar(this.label, this.spendingAmount, this.spendingPctOfTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('\$${spendingAmount.toStringAsFixed(0)}'), // Display the spending amount as a formatted text
        SizedBox(
          height: 4,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0), // Add a grey border to the container
                  color: Color.fromRGBO(220, 220, 220, 1), // Set a light grey background color
                  borderRadius: BorderRadius.circular(10), // Apply rounded corners to the container
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPctOfTotal, // Set the height factor to represent the percentage of total spending
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor, // Use the primary color from the app's theme
                    borderRadius: BorderRadius.circular(10), // Apply rounded corners to the colored bar
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(label), // Display the label below the bar
      ],
    );
  }
}

