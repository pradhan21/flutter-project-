import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questiontext'].toString(),
        ), //Question
        ...(questions[questionIndex]['options'] as List<Map<String, Object>>)
            .map((options) {
          return Answer(
              () => answerQuestion(options['score']), options['text'].toString());
        }).toList()
      ],
    ); //Column
  }
}
