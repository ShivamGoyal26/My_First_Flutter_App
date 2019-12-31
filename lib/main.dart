import 'package:flutter/material.dart';
// import 'package:flutter_complete_guide/answer.dart';
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
  var _questionIndex = 0;

  

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    const questions = [
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
          body: Column(
            children: <Widget>[
              Question(
                questions[_questionIndex]['questionText'],
              ),
              // here we map a list of answers into a mapping of widgets with the help of map() function because here map() function return the widget or any thing
              // here map function will excute for each element in the questions[_questionIndex]['answers'] list  and here the current element recieved in the map function which will be stored in the answer variable you can use any name instead of answer
              // Here keep in the mind that map() function will excute for every element in the list
              // here map gives us the Iterable not a list but here we want a list that's why we convert the map in to the lists at last by using tolist() function
              // now the value which map gives us is a list due to the tolist() function
              // here column takes the list of widgets but here we have the list of list means nested list
              // here we use ... operator here this operator takes a list and they put all the values in the list out of it  and add them to the sourrouding list which is chlidren in this case as a individual value
              // so here technically we dont add the list to list mean children is a list right and we have also a list given below so thats why ... makes the list into the numbers
              // in short here it will return the widget Answer right but as we discussed that map() function don't return the widgets but it returns iterations right but we want the list of the widgets so we used tolist() function to convert the iterations in to the list of widgets means at last we have the list of widgets now at the top we have the children which is supposed to get the widgets or the values not the list of widgets so that's why we used ... operation to get every widgets from the list of widgets return by map() function and add each widget in the children list now its alright

              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()

              // see map() will return this kind of struture to you given below
              // [
              //   if _questionIndex = 0
              //   Answer(_answerQuestion, "black");
              //   Answer(_answerQuestion, "red");
              //   Answer(_answerQuestion, "blue");
              // ]

              // now ... this operator removes the list like
              //   Answer(_answerQuestion, "black");
              //   Answer(_answerQuestion, "red");
              //   Answer(_answerQuestion, "blue");
            ],
          )),
    );
  }
}
