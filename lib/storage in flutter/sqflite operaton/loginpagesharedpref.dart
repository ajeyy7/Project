import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3/storage%20in%20flutter/sqflite%20operaton/signuppagesharedpref.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPagesp(),
  ));
}

class LoginPagesp extends StatefulWidget {
  const LoginPagesp({super.key});

  @override
  State<LoginPagesp> createState() => _LoginPagespState();
}

class _LoginPagespState extends State<LoginPagesp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
        backgroundColor: Colors.blueGrey[100],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Loginpage",style: GoogleFonts.poppins(fontSize: 30,color: Colors.blueGrey[300]),)),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
                filled: true,
                fillColor: Colors.blueGrey[100],
                hintText: "Email",
                prefixIcon: Icon(Icons.email_outlined)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Password",
              prefixIcon: Icon(Icons.visibility),
              filled: true,
              fillColor: Colors.blueGrey[100]
            ),
            ),
          ),
          ElevatedButton( 
              onPressed: (){}, child: Text("Login"),style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
    ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Not An User?"),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signupsp()));
              }, child: Text("Register")),
            ],
          )
        ],
      ),
    );
  }
}
