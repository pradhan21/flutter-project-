import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  Function addTx; // Callback function to add a new transaction
  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController(); // Controller for the title input field
  final amountController = TextEditingController(); // Controller for the amount input field

  void onSubmitPressed() {
    // Function called when the submit button is pressed

    final enteredTitle = titleController.text; // Get the entered title
    final enteredAmount = double.parse(amountController.text); // Get the entered amount

    if (enteredTitle.isEmpty || enteredAmount < 0) {
      // Check if the entered title is empty or the amount is negative
      return; // Exit the function if the input is invalid
    }

    widget.addTx(titleController.text, double.parse(amountController.text)); // Call the addTx callback function with the entered title and amount

    Navigator.of(context).pop(); // Close the bottom sheet after adding the transaction
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => onSubmitPressed(),
              // Trigger the onSubmitPressed function when the user submits the title field
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => onSubmitPressed(),
              // Trigger the onSubmitPressed function when the user submits the amount field
            ),
            ElevatedButton(
              onPressed: onSubmitPressed,
              child: Text("Add Transaction"),
            ),
            // Button to submit the transaction
          ],
        ),
      ),
    );
  }
}
