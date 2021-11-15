import "package:flutter/material.dart";
import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your name? ",
      "What's your father's Name? ",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: () {
                print("All is well");
                print("Make sure you pray tonight");
              },
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () => print("Nah Joshua seh"),
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
