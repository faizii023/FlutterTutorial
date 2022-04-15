import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  void answerQuestion() {
    print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "What\'s your favorite Color?",
      "What\'s your favorite animal?",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter App",
          style: TextStyle(
            fontFamily: 'Monsterrat',
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        children: [
          Text(
            'The question',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20.0,
              letterSpacing: 1,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              answerQuestion();
            },
            child: Text("Answer 1"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              answerQuestion();
            },
            child: Text("Answer 2"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              answerQuestion();
            },
            child: Text("Answer 3"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
