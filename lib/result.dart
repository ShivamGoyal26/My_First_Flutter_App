import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome";
    } else if (resultScore <= 12) {
      resultText = "You are Likable";
    } else if (resultScore <= 16) {
      resultText = "You are cool";
    } else {
      resultText = "You are bad";
    }
    return resultText;
  }

  // Here lets see how to use the get in the flutter here get is like the functions which does not
  // accepts the arguments as we have see in onpressed example
  // here string is the type of get function which do not take arguments
  // here resultPhrase is the name of the get Function
  // here get always return the value of its type

  // if here you dont want to use the get function you can use the simple function also
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            child: Text("Restart Quiz!"),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
