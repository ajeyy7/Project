import 'package:flutter/material.dart';
import 'package:project3/storage%20in%20flutter/shared%20prefference/simple%20login%20using%20shared%20pref/shared%20login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Registrationpg(),
  ));
}

class Registrationpg extends StatefulWidget {
  const Registrationpg({super.key});

  @override
  State<Registrationpg> createState() => _RegistrationpgState();
}

class _RegistrationpgState extends State<Registrationpg> {
  final name = TextEditingController();
  final email = TextEditingController();
  final pass = TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: Icon(Icons.person),
                    labelText: "Username"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: "Email ID",
                    prefixIcon: Icon(Icons.email_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: pass,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: Icon(Icons.visibility),
                    labelText: "Password"),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async {
                  preferences = await SharedPreferences.getInstance();
                  String namee = name.text;
                  String emilid = email.text;
                  String password = pass.text;
                  if (name != "" && password != "" && emilid != "") {
                    preferences.setString("username", namee);
                    preferences.setString("email", emilid);
                    preferences.setString("password", password);
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SharedLogin()));
                  }
                  name.text = "";
                  email.text = "";
                  pass.text = "";
                },
                child: Text("Register"))
          ],
        ),
      ),
    );
  }
}
