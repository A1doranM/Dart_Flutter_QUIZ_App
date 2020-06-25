import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question({@required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 23),
        textAlign: TextAlign.center,
      ),
    );
  }
}
