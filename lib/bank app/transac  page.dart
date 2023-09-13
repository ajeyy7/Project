import 'package:flutter/material.dart';
import 'package:project3/bank%20app/refractorrrm/refracc.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Trans(),
  ));
}

class Trans extends StatelessWidget {
  const Trans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.qr_code)],
        title: Text("Welcome! AJAY"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate([Stackz()]))
        ],
      ),
    );
  }
}
