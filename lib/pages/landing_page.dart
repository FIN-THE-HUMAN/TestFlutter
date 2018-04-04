import 'package:flutter/material.dart';
class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.redAccent,
      child: new InkWell(
        onTap: () => print("You tapped it"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Hello", style: new TextStyle(color:  Colors.white, fontSize:  50.0, fontWeight: FontWeight.bold)),
            new Text("Tap to be cool", style: new TextStyle(color:  Colors.white, fontSize:  20.0, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}