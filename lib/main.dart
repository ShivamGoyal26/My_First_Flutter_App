import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  var _questionIndex = 0;

  final questions = const [
    {
      'questionText': "what's your favorite color",
      'answers': ['black', 'red', 'blue', 'hi'],
    },
    {
      'questionText': "what's your favorite animal",
      'answers': ['wolf', 'tiger', 'lion'],
    },
    {
      'questionText': "what's your favorite car",
      'answers': ['lamborgini', 'rolls royce', 'audi'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // if (_questionIndex < questions.length) {
    //   print("we have more questions");
    // } else {
    //   print("No more questions left");
    // }
    // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': "what's your favorite color",
        'answers': ['black', 'red', 'blue', 'hi'],
      },
      {
        'questionText': "what's your favorite animal",
        'answers': ['wolf', 'tiger', 'lion'],
      },
      {
        'questionText': "what's your favorite car",
        'answers': ['lamborgini', 'rolls royce', 'audi'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        // here if this condition is true _questionIndex < questions.length then the code after question mark will run like here column will run in this case if it does not meet the condition then the code after the : will run because in the flutter we have else block after the :

        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
