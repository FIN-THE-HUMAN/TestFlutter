import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  
  final String _question;
  final int _questionNumber;

  QuestionText(this._question, this._questionNumber);
  
  @override
  State createState() => new QuestionTextState();
}

class QuestionTextState extends State<QuestionText> {
  @override
  Widget build(BuildContext context){
    return new Container(
    decoration: new BoxDecoration(
      border: new Border(top: new BorderSide(color: Colors.black87, width: 5.0), bottom: new BorderSide(color: Colors.black87, width: 5.0)),
    ),
    child: new Material(
     color:  Colors.white,
      child: new Padding(
        padding: new EdgeInsets.symmetric(vertical:20.0),
        child: new Center(
            child: new Text(widget._question.toString(), style: new TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 20.0, fontStyle: FontStyle.italic ),),
        ),
      ),
    )
    );
  }
}