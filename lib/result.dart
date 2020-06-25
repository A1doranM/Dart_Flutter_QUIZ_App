import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String resultText;
  final int score;

  Result({this.resultText, this.score});

  String get resultPhrase {
    return resultText + "\n" + "You score is: $score";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
    );
  }
}
