import 'package:flutter/material.dart';
import 'package:hellorectfull/quiz.dart';
import 'package:hellorectfull/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalscore = 0;

  final _questions = const [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'Green', 'score': 30},
        {'text': 'Blue', 'score': 40}
      ],
    },
    {
      'questionText': 'What is your favourite programing language?',
      'answers': [
        {'text': 'C++', 'score': 10},
        {'text': 'Java', 'score': 20},
        {'text': 'JavaScript', 'score': 30},
        {'text': 'Dart', 'score': 40}
      ],
    },
    {
      'questionText': 'What is your favourite sport?',
      'answers': [
        {'text': 'Formula 1', 'score': 10},
        {'text': 'NASCAR', 'score': 20},
        {'text': 'WRC', 'score': 30},
        {'text': 'Poker', 'score': 40},
      ],
    }
  ];

  void _answerQuestion(int score) {
    setState(() {
      _totalscore += score;
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(
                resultText: 'You did it!',
                score: _totalscore,
              ),
      ),
    );
  }
}
