import 'package:flutter/material.dart';
import 'Full.dart';

class Buttonpage extends StatefulWidget {
  @override
  _ButtonpageState createState() => _ButtonpageState();
}

class _ButtonpageState extends State<Buttonpage> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Click game"),
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
                  child: Icon(Icons.play_arrow),
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
    );
  }
}


