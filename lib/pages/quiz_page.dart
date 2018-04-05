import 'package:flutter/material.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';

import '../UI/answer_button_data.dart';
import '../UI/question_text.dart';
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
            new QuestionText("Do you know de wae?", 1),
            new AnswerButton("No", false, Colors.redAccent,() {print("Your answer is NOT right");}),
          ],
        )
      ],
    );
   }
}