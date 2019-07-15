import 'package:flutter/material.dart';

class Buttonpage extends StatefulWidget {
  @override
  _ButtonpageState createState() => _ButtonpageState();
}

class _ButtonpageState extends State<Buttonpage> {
  double countval = 0;
  int total = 0;
  double sizes;
  @override
  Widget build(BuildContext context) {
    // if (countval == 0) {
    //   sizes = 28;
    // } else {
    //   sizes = 18;
    // }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Button Click event"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: Center(
              child: Text(
                "Button clicked " +
                    countval.toString() +
                    " times\n" +
                    "total time button clicked " +
                    total.toString(),
                style: TextStyle(fontSize: countval),
              ),
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  child: Icon(Icons.add),
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  focusColor: Colors.red,
                  tooltip: 'add counter',
                  onPressed: () {
                    setState(() => total += 1);
                    setState(() => countval += 1);
                  },
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.black,
                  focusColor: Colors.red,
                  child: Icon(Icons.remove),
                  tooltip: 'minus counter',
                  onPressed: () {
                    setState(() => total += 1);
                    setState(() => countval -= 1);
                  },
                ),
                FloatingActionButton(
                  child: Icon(Icons.restore),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  focusColor: Colors.red,
                  tooltip: 'reset',
                  onPressed: () {
                    setState(() => total += 1);
                    setState(() => countval = 0);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
