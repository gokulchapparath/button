import 'package:flutter/material.dart';
import 'Full.dart';
class Score extends StatefulWidget {
  final String p1;
  final String p2;
  final String pm1;
  final String pm2;

  Score({Key key,this.p1,this.p2,this.pm2,this.pm1}):super(key:key);
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
          
          new Text("PLAYER 1: "+"${widget.p1} "+"(${widget.pm1})",style:TextStyle(color: Colors.white)),
          new Text("PLAYER 2: "+"${widget.p2} "+"(${widget.pm2})",style:TextStyle(color: Colors.white)),

        ],
      ),
    );
  }
}