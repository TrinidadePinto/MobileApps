import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qindex = 0;
  void _answerQuestion() {
    setState(() {
      _qindex = _qindex + 1;
    });

    print(_qindex);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var _questions = ['What\s your favourite color', 'How old are you'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'flutter complete guide',
          ),
        ),
        body: Column(
          children: [
            Question(_questions[_qindex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion)
          ],
        ),
      ),
    );
  }
}
