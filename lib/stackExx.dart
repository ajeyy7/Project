import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Stackex(),));
}
class Stackex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack"),),
      body: Stack(
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.deepPurple,
          ),
          Container(
            height: 400,
            width: 400,
            color: Colors.orange,
          ),
          Container(
            height:300,
            width: 300,
            color: Colors.deepPurple[50],
          ),
          Container(
            height: 260,
            width: 260,
            color: Colors.green,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.brown,
          ),
        ],
      ),
    );
  }
}
