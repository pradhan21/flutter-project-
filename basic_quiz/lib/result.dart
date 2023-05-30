import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final finalScore;
  VoidCallback resetData;

  Result(this.finalScore, this.resetData);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          child: Text("Quiz Over! The total score is $finalScore",
              textAlign: TextAlign.center),
        ),
        ElevatedButton(onPressed: resetData, child: Text("Restart")),
      ],
    );
  }
}
