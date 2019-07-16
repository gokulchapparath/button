import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'dart:async';
import 'main.dart';
import 'Buttonpage.dart';
class Full extends StatefulWidget {
  @override
  _FullState createState() => _FullState();
}

class _FullState extends State<Full> {
  
  
  double countval = 0;
  int total = 0;
  double sizes = 0;

  double countval1 = 0;
  int total1 = 0;
  double sizes1 = 0;
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 60), (timer) {
      _Disps(context,countval,countval1);
       Navigator.of(context).pop(context);
});
    if (countval >= 200) {
      sizes = 200;
    }
    String my = (countval.toInt()).toString();
    if (countval1 >= 200) {
      sizes1 = 200;
    }
    String my1 = (countval1.toInt()).toString();
    return Scaffold(
      
      body: Column(
        children: <Widget>[
          Expanded(
            child: RotatedBox(
              quarterTurns: 2,
              child: MaterialButton(
                color: Colors.white,
                onPressed: () {
                  setState(() => total += 1);
                  setState(() => countval += 1);
                  setState(() => sizes += 1);
                },
                splashColor: Colors.black,

                child: Text(
                  my,
                  style: TextStyle(fontSize: sizes, color: Colors.black),
                ),
                minWidth: double.infinity,
                //height: 50,
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              color: Colors.black,
              onPressed: () {
                setState(() => total1 += 1);
                setState(() => countval1 += 1);
                setState(() => sizes1 += 1);
              },
              splashColor: Colors.white,
              child: Text(
                my1,
                style: TextStyle(fontSize: sizes1, color: Colors.white),
              ),
              minWidth: double.infinity,
            ),
          )
        ],
      ),
    );

    
  }
}


void _Disps(context,countval,countval1)
    {
      showDialog(
        context: context,
        builder: (BuildContext context)
        {
              return AlertDialog(
                  title: new Text("Scores"),
                content:new Text("times up !!\nplayer 1:"+(countval1.toInt()).toString()+"\nplayer 2:"+(countval.toInt()).toString()),
                actions: <Widget>[
                  new FlatButton(
                    child: new Text("close"),
                    onPressed: (){
                      Navigator.of(context).pop(context);
                      Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => new Buttonpage()),
        
      );
                    },
                  )
                ],
                 
              );
        }
      );
    }