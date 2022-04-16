import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
        margin: EdgeInsets.all(10.0),
        child:Text(questionText,
          style: TextStyle(
            fontFamily: 'Montserrat',
            letterSpacing: 1,
            fontSize: 20.0,
          ),
          textAlign: TextAlign.center,
        ),
    );
  }
}
