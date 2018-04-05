import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  
  final String _question;
  final int _questionNumber;

  QuestionText(this._question, this._questionNumber);
  
  @override
  State createState() => new QuestionTextState();
}

class QuestionTextState extends State<QuestionText> with SingleTickerProviderStateMixin {
  
  Animation<double> _fontSizeAnimation;
  AnimationController _controller;
  //int _fontSizeAnimationFactor = 15;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(duration: new Duration(milliseconds:  800), vsync: this);
    _fontSizeAnimation = new CurvedAnimation(parent:  _controller, curve: Curves.bounceOut);
    _fontSizeAnimation.addListener(() => this.setState((){}));
    _controller.forward();
  }

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
            child: new Text(widget._question.toString(), 
              style: new TextStyle(fontSize: _fontSizeAnimation.value * 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic ),
          ),
        ),
      ),
    )
    );
  }
}