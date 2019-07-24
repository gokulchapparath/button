import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:async';
import 'Buttonpage.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();
    loadData();
  }
Future<Timer> loadData() async {
  return new Timer(Duration(seconds: 3),onDoneLoading);
}

onDoneLoading() async {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Buttonpage()));
}

  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: BoxDecoration(
        
        image: DecorationImage(
             image: new NetworkImage("https://i.pinimg.com/originals/7f/7d/c3/7f7dc3ca4adda70b0cde5c3804b6d897.jpg"),
            fit: BoxFit.cover
        ) ,
      ),
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
        ),
      ),
    );
  }
}