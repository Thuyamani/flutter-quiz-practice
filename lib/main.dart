import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz.dart';
import 'package:flutter_quiz/result.dart';

import './quiz.dart';
import './result.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{
  var _questionIndex= 0;
  var _totalScore = 0;
  final _questions = const [
        {
          'questionText':'what is your fav color',
          'answers':[
            {'text':'Red', 'score':2}, 
            {'text':'Black', 'score':4}, 
            {'text':'Blue', 'score':6}, 
            {'text':'Green', 'score':8}, 
            ]
        },
        {
          'questionText':'what is your fav anime',
          'answers':[
            {'text':'One Piece', 'score':2}, 
            {'text':'Dragon Ball Z', 'score':4}, 
            {'text':'Attack on Titan',  'score':6}, 
            {'text':'Naruto', 'score':8}, 
            ]
        },
        {
          'questionText': 'whats your fav food',
          'answers': [
            {'text':'Burger', 'score':2},
            {'text':'Pizza', 'score':4},
            {'text':'Subway', 'score':6},
            {'text':'Chilli Potatoes', 'score':8}, 
            ]
        }
    ];

  void _answerQuestion(int score){
_totalScore += score;

    setState(() {
      _questionIndex= _questionIndex+1;
    });
    
    print(_questionIndex);
  }

void resetQuiz(){
  setState(() {
     _questionIndex= 0;
   _totalScore = 0;
  });
}

  @override
  Widget build(BuildContext context){
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('first App Quiz')),
      body : (_questionIndex<_questions.length)? Quiz(
        //questions: _questions, 
        //answerQuestion: _answerQuestion, 
        //questionIndex: _questionIndex
        _questions,
        _answerQuestion,
        _questionIndex
        ) : Result(_totalScore, resetQuiz),
      
    ),
    );
  }
}

