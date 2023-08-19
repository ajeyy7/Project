import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Statelss extends StatelessWidget {
  int?phone;
  String?name;
  String?location;

  Statelss({super.key, this.phone, required this.name, required this.location,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recieve data"),
      ),
      body: Center(
        child: Container(
          color: Colors.blueGrey,
          height: 500,
          width: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name!,style: GoogleFonts.bahiana(fontSize: 60,color: Colors.red),),
                Text('$phone',style: GoogleFonts.bahiana(fontSize: 60,color: Colors.yellow),),
                Text(location!,style: GoogleFonts.bahiana(fontSize: 60,color: Colors.yellow),),
              ],
          ),
        ),
      ),

    );
  }
}
