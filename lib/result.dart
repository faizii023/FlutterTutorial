import 'package:flutter/material.dart';

import './main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You dit it';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = "Pretty likable";
    } else if (resultScore <= 16) {
      resultText = "You are .... strange";
    } else {
      resultText = 'You are awful';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(
            child: Text(
              resultPhrase,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.red[600],
            ),
            onPressed: resetHandler,
            child: Text(
              'Restart quiz',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                color: Colors.red[600],
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
