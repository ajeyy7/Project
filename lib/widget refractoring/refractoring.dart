import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Refractoring3(),
  ));
}

class Refractoring3 extends StatelessWidget {
  const Refractoring3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refractoring3"),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return MyRefractoringWidget(
              bgcolor: Colors.blue[50],
              rimage: Image.network(
                  "https://images.unsplash.com/photo-1638376867453-473a06ef71dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDcyfGhtZW52UWhVbXhNfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
            label: Text("Stop",style: GoogleFonts.moonDance(
              fontSize: 30,
              color: Colors.red,
              
            ),
            ),
              ricon: Icon(Icons.car_crash),
            );
          }),
    );
  }
}

class MyRefractoringWidget extends StatelessWidget {
  final Color? bgcolor;
  final Image? rimage;
  VoidCallback? onclick;
  Widget? label;
  Widget? ricon;

  MyRefractoringWidget({
    this.bgcolor,
    required this.rimage,
    this.label,
    this.onclick,
    this.ricon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: ListTile(
        title: label,
        leading: rimage,
        onTap: onclick,
        trailing: ricon,
      ),
    );
  }
}
