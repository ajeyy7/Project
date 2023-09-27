import 'package:flutter/material.dart';
import 'package:project3/storage%20in%20flutter/sqflite%20operaton/loginpagesharedpref.dart';
import 'package:project3/storage%20in%20flutter/sqflite%20operaton/signuppagesharedpref.dart';
void main(){
  runApp(MaterialApp(home: Welcomepg(),));
}
class Welcomepg extends StatefulWidget {
  const Welcomepg({super.key});

  @override
  State<Welcomepg> createState() => _WelcomepgState();
}

class _WelcomepgState extends State<Welcomepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Loginpage"),
          ),
          body:
              Center(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image: NetworkImage("https://images.unsplash.com/photo-1694687530321-7ecd3c9163b1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=800&q=60",))
                  ),
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPagesp()));
                    }, child: Text("Login")),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signupsp()));
                    }, child: Text("SignUp")),
                  )
                ],
            ),
          ),
              ),
              );
  }
}
