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
  final _questions = const [
    {
      'questionText': 'What is your favourite color?',
      'answers': ['Black', 'Red', 'Green', 'Blue'],
    },
    {
      'questionText': 'What is your favourite programing language?',
      'answers': ['C++', 'Java', 'JavaScript', 'Dart'],
    },
    {
      'questionText': 'What is your favourite sport?',
      'answers': ['Formula 1', 'Poker', 'NASCAR', 'WRC'],
    }
  ];

  void _answerQuestion() {
    setState(() {
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
            : Result('You did it!'),
      ),
    );
  }
}
