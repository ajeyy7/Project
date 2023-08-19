import 'package:flutter/material.dart';
import 'package:project3/passing%20data%20between%20screens/using%20Constructor/to%20statefullpagee.dart';
import 'package:project3/passing%20data%20between%20screens/using%20Constructor/to%20statelsesspagee.dart';

void main() {
  runApp(MaterialApp(
    home: Detailsp(),
  ));
}

class Detailsp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passing Data btw screens using constructor"),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Statelss(
                          name: "Luminar",
                          location: "kakanad",
                          phone: 9865564588)));
                },
                child: Text("To Stateless page")),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Stateflpge(
                name:"ajay",
                location:"ottapalam",
                phone:98655426454
              )));
            }, child: Text("To Statefull page")),
          ],
        ),
      ),
    );
  }
}
