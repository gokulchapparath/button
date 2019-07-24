import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'Buttonpage.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
void main() async =>runApp(Btnclk());
class Btnclk extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Buttonpage(),
      
      
    );
  }
}