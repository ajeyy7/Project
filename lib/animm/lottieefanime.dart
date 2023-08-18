import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: Lottief(),));
}
class Lottief extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lottie animation"),),
      body: ListView(
        children: [
          Lottie.asset("assets/anime/batman.json"),
          Lottie.network("https://lottie.host/af944106-56c8-48c1-90c0-4ad12807d028/xAy8q2roN2.json"),
          Center(child: Lottie.network("https://lottie.host/a96cfbae-071f-4e9a-90a8-cbe57d3f1698/rIUCUwLO8d.json"))
        ],
      ),
    );
  }
}
