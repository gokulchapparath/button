import 'dart:io';

import 'package:flutter/material.dart';
import 'Full.dart';

class Buttonpage extends StatefulWidget {
  @override
  _ButtonpageState createState() => _ButtonpageState();
}

class _ButtonpageState extends State<Buttonpage> {
  
  Future<bool> _OnBackPress()
  {
    return showDialog(
      barrierDismissible: false,
      context: context,
     builder: (context)=>AlertDialog(
       title: Text("Exit App"),
       actions: <Widget>[
         FlatButton(
           child: Text("NO"),
           onPressed: ()=>Navigator.pop(context,false),
         ),
         FlatButton(
           child: Text("YES"),
           onPressed: ()=>exit(0),
         ),
       ],
     ) 
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return WillPopScope(
      onWillPop: _OnBackPress,
      child: new Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Screen Destroyer"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
        
          children: <Widget>[
            Expanded(
                child: Center(
              child:

                FloatingActionButton(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  focusColor: Colors.red,
                  child: Icon(Icons.play_circle_outline),
                  tooltip: 'Play',
                  onPressed: () {
                    Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => new Full()),
      );
                  },
                ),
              ),
            ),
            
          ],
        ),
      ),
      
    ),
    );
  }
}



