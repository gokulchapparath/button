import 'package:flutter/material.dart';
import 'Buttonpage.dart';
import 'Full.dart';
void main()=>runApp(Btnclk());
class Btnclk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Buttonpage(),
    );
  }
}