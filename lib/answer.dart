import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red[600],
          onPrimary: Colors.white,
          shadowColor: Colors.black,
        ),
        child: Text(
          answerText,
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
