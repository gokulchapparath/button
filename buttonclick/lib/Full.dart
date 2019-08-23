import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'dart:async';
import 'main.dart';
import 'Buttonpage.dart';
import 'Score.dart';
//import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Full extends StatefulWidget {
  @override
  _FullState createState() => _FullState();
}

class _FullState extends State<Full> {
  Future<bool> _OnBack() {
    Navigator.pop(context, false);
  }

  Future<bool> _OnBackPress() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Go back to Main Menu?"),
              actions: <Widget>[
                FlatButton(
                  child: Text("NO"),
                  onPressed: () => Navigator.pop(context, false),
                ),
                FlatButton(
                  child: Text("YES"),
                  onPressed: () => Navigator.popUntil(
                      context, ModalRoute.withName(Navigator.defaultRouteName)),
                ),
              ],
            ));
  }

  double Countval = 0;
  int total = 0;
  double sizes = 0;

  double Countval1 = 0;
  int total1 = 0;
  double sizes1 = 0;
  String Pm;
  String Pm1;

  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 30), (timer) {
      if (Countval == Countval1) {
        Pm = "DRAW";
      } else if (Countval > Countval1) {
        Pm = "Player 2 Wins";
      } else if (Countval1 > Countval) {
        Pm = "Player 1 Wins";
      }

      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text("Scores"),
              content: new Text("times up !!\nplayer 1: " +
                  (Countval1.toInt()).toString() +
                  "\nplayer 2: " +
                  (Countval.toInt()).toString() +
                  "\n" +
                  Pm),
              actions: <Widget>[
                new FlatButton(
                  child: new Text("MAIN MENU"),
                  onPressed: () {
                    // Navigator.of(context).pop(context);
                    Navigator.popUntil(context,
                        ModalRoute.withName(Navigator.defaultRouteName));
                  },
                ),
                new FlatButton(
                  child: new Text("NEW GAME"),
                  onPressed: () {
                    // Navigator.of(context).pop(context);
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => new Full()),
                    );
                  },
                ),
              ],
            );
          });
      // _Disps(context,countval,countval1);
      //  Navigator.of(context).pop(context);
      deactivate();
      dispose();
      timer.cancel();
      //   var route = new MaterialPageRoute(
      //       builder: (BuildContext context) => Score(
      //           p1: (countval1.toInt()).toString(),
      //           p2: (countval.toInt()).toString(),
      //           pm2:pm.toString(),
      //           pm1:pm1.toString(),)
      //         );
      //   Navigator.of(context).push(route);
    });
    if (Countval >= 150) {
      sizes = 150;
    }
    String my = (Countval.toInt()).toString();
    if (Countval1 >= 150) {
      sizes1 = 150;
    }
    String my1 = (Countval1.toInt()).toString();

    return WillPopScope(
      onWillPop: _OnBackPress,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: RotatedBox(
                quarterTurns: 2,
                child: MaterialButton(
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      total++;
                      Countval++;
                      sizes++;
                    });
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
                  setState(() {
                    total1++;
                    Countval1++;
                    sizes1++;
                  });
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
      ),
    );
  }
}
