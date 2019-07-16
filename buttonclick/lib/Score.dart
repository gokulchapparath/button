import 'package:flutter/material.dart';
import 'Full.dart';
class Score extends StatefulWidget {
  final String p1;
  final String p2;
  
  Score({Key key,this.p1,this.p2}):super(key:key);
  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text("TIMES UP!!",style:TextStyle(color: Colors.white)),
          new Text("SCORES",style:TextStyle(color: Colors.white)),
          
          new Text("PLAYER 1: "+"${widget.p1}",style:TextStyle(color: Colors.white)),
          new Text("PLAYER 2: "+"${widget.p2}",style:TextStyle(color: Colors.white)),

        ],
      ),
    );
  }
}