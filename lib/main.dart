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
  final questions = const [
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questionText: questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(
                      selectHandler: _answerQuestion,
                      answerText: answer,
                    );
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
