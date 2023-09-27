import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3/storage%20in%20flutter/sqflite%20operaton/loginpagesharedpref.dart';

void main() {
  runApp(MaterialApp(
    home: Signupsp(),
  ));
}

class Signupsp extends StatefulWidget {
  const Signupsp({super.key});

  @override
  State<Signupsp> createState() => _SignupspState();
}

class _SignupspState extends State<Signupsp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[100],
        title: Text("Signup Page",style: GoogleFonts.poppins(fontSize:20),),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SignUp!",style: GoogleFonts.poppins(fontSize: 40,color: Colors.deepPurple[200]),),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Name",
                  prefixIcon: Icon(Icons.person),
                  filled: true,
                  fillColor: Colors.deepPurple[100]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email",
                      prefixIcon: Icon(Icons.email_outlined),
                      filled: true,
                      fillColor: Colors.deepPurple[100]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Password",
                      prefixIcon: Icon(Icons.visibility),
                      filled: true,
                      fillColor: Colors.deepPurple[100]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Confirm Password",
                      prefixIcon: Icon(Icons.visibility),
                      filled: true,
                      fillColor: Colors.deepPurple[100]),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPagesp()));
                  }, child: Text("SignIn",) ,
                  style:ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple[300]
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already a user?"),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPagesp()));
                  }, child: Text("Login")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
