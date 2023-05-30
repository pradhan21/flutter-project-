import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questionList;
  final int _questionIndex;
  final Function _answerQuestion;
  Quiz(this.questionList,this._questionIndex,this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questionList[_questionIndex]["QuestionName"].toString()),
        ...(questionList[_questionIndex]["AnswerList"] as List<Map<String,Object>>)
            .map((e) {
          return Answers(()=> _answerQuestion(e["score"]), e['text'].toString());
        }),

        // Image Widget
        Container(
          height: 250,
          width: 250,
          margin: EdgeInsets.all(10),
          child: Image.asset("image/quiz_app_logo.png", fit: BoxFit.contain),
        ),

        /** Container Widget */

        /** Container(  
                  padding: EdgeInsets.all(35),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.green,
                        offset: new Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                  child: Text("Quiz App!",textAlign: TextAlign.center,),
                ),*/
      ],
    );
  }
}
