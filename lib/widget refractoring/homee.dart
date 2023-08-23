import 'package:flutter/material.dart';
import 'package:project3/widget%20refractoring/Miwidget.dart';

void main() {
  runApp(MaterialApp(
    home: RefraHome(),
  ));
}

class RefraHome extends StatelessWidget {
  var name = ["coffee", "Shake", "Lime tea", "Cold Cofee"];
  var img = [
    "https://plus.unsplash.com/premium_photo-1670445287612-d6fed960c910?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29mZWV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1572490122747-3968b75cc699?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hha2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1556881286-fc6915169721?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bGltZSUyMHRlYXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1617121984181-8d1a2d459ea1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGNvbGQlMjBjb2ZmZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"
  ];
  var pric = ["100", "300", "150", "250"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(" Shibili Tea Shop"),
      ),
      body: GridView.builder(
        itemCount: 4,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              //color: Colors.green,
              child: MiWidget(
                  name: name[index],
                  myimage: NetworkImage(img[index]),
                  price: pric[index]),
            );
          }),
    );
  }
}
