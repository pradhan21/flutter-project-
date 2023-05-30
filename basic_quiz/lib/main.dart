import 'package:basic_quiz/quiz.dart';
import 'package:flutter/material.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _score=0;

  // var questionList = [
  //   "What is your favourite colour ?",
  //   "What is your favourite animal"
  // ];
  final questionList = [
    {
      "QuestionName": "What's your favourite colour ?",
      "AnswerList": [
        {"text": "Blue", "score": 10},
        {"text": "Green", "score": 20},
        {"text": "Black", "score": 30},
        {"text": "Dark Black", "score": 40}
      ]
    },
    {
      "QuestionName": "What's your favourite animal ?",
      "AnswerList": [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 20},
        {'text': 'Snake', 'score': 30},
        {'text': 'Tiger', 'score': 40},
      ]
    },
    {
      "QuestionName": "What's your favourite climate condition ?",
      "AnswerList": [
        {'text': 'Moderate Hot', 'score': 10},
        {'text': 'Moderate Cold', 'score': 20},
        {'text': 'Hot', 'score': 30},
        {'text': 'Cold and Snowy', 'score': 40},
      ]
    },
  ];

  void resetData(){
    setState(() {
    _questionIndex = 0;
    _score = 0;
    });
  }

  void _answerQuestion(int score) {
    _score = _score + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Basic Quiz App", style: TextStyle(fontFamily: 'Inspiration'),),
      ),
      body: _questionIndex < questionList.length
          ? Quiz(questionList, _questionIndex,_answerQuestion)
          : Result(_score,resetData),
    ));
  }
}
