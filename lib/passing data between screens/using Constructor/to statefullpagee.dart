import 'package:flutter/material.dart';

class Stateflpge extends StatefulWidget {
  String name;
  String location;
  int phone;
   Stateflpge({super.key, required this.name, required this.location, required this.phone});

  @override
  State<Stateflpge> createState() => _StateflpgeState();
}

class _StateflpgeState extends State<Stateflpge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.name),
            Text(widget.location),
            Text('${widget.phone}')
          ],
        ),
      ),
    );
  }
}
