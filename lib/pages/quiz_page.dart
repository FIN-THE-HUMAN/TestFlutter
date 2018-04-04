import 'package:flutter/material.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';

import '../UI/answer_button_data.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
@override
   Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new AnswerButton("Yes", true, Colors.greenAccent, () { print("Your answer is right");}),
            new Material(
              color:  Colors.white,
              child: new Padding(
                padding: new EdgeInsets.symmetric(vertical:20.0),
                child: new Center(
                  child: new Text("Do you know de wae?", style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                ),
              ),
            ),
            new AnswerButton("No", false, Colors.redAccent,() {print("Your answer is NOT right");}),
          ],
        )
      ],
    );
   }
}