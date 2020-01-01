import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  // Now here we have made the Quiz widget arguments as the name arguments by using these {} brakets around it  here we can also used the arguments without the name but here we used the named arguments so that we don't need or bother about the order of arguments or so that we can pass the arguments without any order with their names 
  
  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'],
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

        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
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
    );
  }
}
