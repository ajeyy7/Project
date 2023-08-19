import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MaterialApp(
    home: Riveanim(),
  ));
}

class Riveanim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        child:
        RiveAnimation.asset("assets/anime/5067-10219-robo-buddy.riv",fit: BoxFit.contain,),
      )
    );
  }
}
