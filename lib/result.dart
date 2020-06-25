import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String resultText;
  final int score;
  final Function resetQuiz;

  Result({this.resultText, this.score, this.resetQuiz});

  String get resultPhrase {
    return resultText + "\n" + "You score is: $score";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.green,
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
