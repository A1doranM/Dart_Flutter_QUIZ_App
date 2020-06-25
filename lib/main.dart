import 'package:flutter/material.dart';
import 'package:hellorectfull/answer.dart';
import 'package:hellorectfull/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('You selected question $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
        'answers': ['Formula 1', 'Soccer', 'NASCAR', 'WRC'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questionText: questions[_questionIndex],
            ),
            Answer(
              selectHandler: _answerQuestion,
              answerText: questions[0],
            ),
            Answer(
              selectHandler: _answerQuestion,
              answerText: questions[1],
            ),
            Answer(
              selectHandler: _answerQuestion,
              answerText: questions[2],
            ),
          ],
        ),
      ),
    );
  }
}
