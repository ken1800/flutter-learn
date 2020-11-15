import 'package:flutter/material.dart';
import './question.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _question = 0;

  void answerQuestion() {
    setState(() {
      _question = _question + 1;
    });

    if (_question > 2) {
      setState(() {
        _question = 0;
      });
    }
    print("Hi there");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What\'s your favourite color ken ?",
      "What\'s the best gift have you ever received",
      "Jesus have you way in my life"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jesus the lover of my life'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questionText: questions[_question],
            ),
            RaisedButton(
              onPressed: () => answerQuestion(),
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
