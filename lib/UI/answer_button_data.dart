import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  
  final String buttonText;
  final bool answer;
  final Color color;
  final VoidCallback _onTap;

  AnswerButton(this.buttonText, this.answer, this.color, this._onTap);

  @override
  Widget build(BuildContext context){
    return new Expanded(
      child: new Material(
        color: color,
        child: new InkWell(
          onTap: () => _onTap(),
          child: new Center(
            child: new Container(
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.white, width: 5.0)
              ),
              padding: new EdgeInsets.all(20.0),
              child: new Text(
                buttonText, 
                style: new TextStyle(
                  color:  Colors.black87, 
                  fontSize:  50.0, 
                  fontWeight: FontWeight.bold, 
                  fontStyle:  FontStyle.italic
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}