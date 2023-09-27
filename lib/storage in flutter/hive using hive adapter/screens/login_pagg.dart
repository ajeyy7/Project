
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project3/storage%20in%20flutter/hive%20using%20hive%20adapter/screens/home.dart';
import 'package:project3/storage%20in%20flutter/hive%20using%20hive%20adapter/screens/registerpage.dart';

import '../database/hivedb.dart';
import '../models/user_models.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  ///Hive.registerAdapter();
  await Hive.openBox<User>('userBox');
  runApp(MaterialApp(
    home: Login_adapter(),
  ));
}

class Login_adapter extends StatelessWidget {
  Login_adapter({super.key});

  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login!",
            style: GoogleFonts.poppins(fontSize: 29),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.green[100],
                  border: OutlineInputBorder(),
                  hintText: "Username"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(
              controller: pass,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.green[100],
                  border: OutlineInputBorder(),
                  hintText: "Password"),
            ),
          ),
          ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.green[100]),
              onPressed: () async {
                final users = await HiveDb.instance.getUser();
                checkUserExist(context, users);
              },
              child: Text("Login")),
          TextButton(
              style:
                  ElevatedButton.styleFrom(foregroundColor: Colors.green[100]),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Registration_hive()));
              },
              child: Text("Not a user? Register Here!!!"))
        ],
      ),
    );
  }

  Future<void> checkUserExist(BuildContext context, List<User> users) async {
    final lemail = email.text.trim();
    final lpass = pass.text.trim();
    bool userFound = false;
    if (lemail != "" && lpass != "") {
      await Future.forEach(users, (singleUser) {
        if (lemail == singleUser.email && lpass == singleUser.password) {
          userFound = true;
        } else {}
      });
      if (userFound == true) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HiveHome()));
      } else {
        // ScaffoldMessenger.of(context).showSnackBar(
        //     SnackBar(content: Text("Login Failed,User Not Found")));
        Get.snackbar('Failed','user not found');
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Field Must Be Empty")));
    }
  }
}
