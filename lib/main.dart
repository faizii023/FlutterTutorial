import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//Adding underscore before any function,
//variable,class restrict that  inside this file only
class _MyAppState extends State<MyApp> {
  var _questionTndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionTndex = _questionTndex + 1;
    });

    print(_questionTndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
        primary: Colors.red[600],
        onPrimary: Colors.white,
      ))),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My First App',
            style: TextStyle(
              fontFamily: 'Montserrat',
              letterSpacing: 2,
              fontSize: 20.0,
            ),
          ),
          backgroundColor: Colors.red[600],
        ),
        body: Column(
          children: [
            Question(
              questions[_questionTndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
