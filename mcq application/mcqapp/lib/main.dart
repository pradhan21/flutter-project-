import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main() => runApp(const mcqapp());
class mcqapp extends StatefulWidget{
  const mcqapp({Key? key}): super(key: key);

  @override
  State<StatefulWidget> createState() => _mcqappState();
}
class _mcqappState extends State<mcqapp>{
  final _questions = const
  [
    {
      'questiontext': 'What is the name of the bike that is sold by Yatri Motorcycles ?',
      'options': [
        {'text':'Kawasaki z900' , 'score': -10},
        {'text':'Dominar 400' ,'score': -10},
        {'text':'Yamaha R1' ,'score': -10},
       { 'text':'Project One & Project zero' ,'score': 10},
      ],
    },
    {
      'questiontext': 'Who is the owner of Tesla inc.?',
      'options': [
        {'text':'Elon Musk' ,'score': 10},
        {'text':'Mukesh Ambani' ,'score': -10},
        {'text':'Jeff Bezos' ,'score': -10},
        {'text':'Bill Gates' ,'score': -10},
      ],
    },
   {
    'questiontext': 'Which is the strongest metal in the MCU ?',
    'options': [
      {'text':'Uru' ,'score': -10},
      {'text':'Vibranium' ,'score': -10},
      {'text':'Dargonite','score': 10},
      {'text':'Vibranium' ,'score': -10},
    ],
   },
   {
    'questiontext': 'Who is known also termed as the "Dark Knight" ?',
    'options': [
      {'text':'Alfred Pennyworth','score': -10 },
      {'text':'Batman','score': 10} ,
      {'text':'Superman','score': -10},
     { 'text':'The Flash','score': -10}, 
    ]
   }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
 
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
 
  void _answerQuestion(int score) {
    _totalScore += score;
 
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DEMO MCQ'),
          backgroundColor: Color.fromARGB(0, 115, 0, 247),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
