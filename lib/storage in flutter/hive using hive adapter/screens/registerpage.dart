

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project3/storage%20in%20flutter/hive%20using%20hive%20adapter/database/hivedb.dart';
import 'package:project3/storage%20in%20flutter/hive%20using%20hive%20adapter/models/user_models.dart';
import 'package:project3/storage%20in%20flutter/hive%20using%20hive%20adapter/screens/login_pagg.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userBox');
  runApp(MaterialApp(home: Registration_hive(),));
}

  class Registration_hive extends StatelessWidget {
     Registration_hive({super.key});

  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: Column(
  children: [
  Text("Registration Page ", style: GoogleFonts.poppins(fontSize: 20),),
  Padding(
  padding: EdgeInsets.all(8.0),
  child: TextField(
  controller: email,
  decoration: InputDecoration(
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  ),
  hintText: "Email"
  ),

  ),
  ),
  Padding(
  padding: EdgeInsets.all(8.0),
  child: TextField(
  controller: pass,
  decoration: InputDecoration(
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20)
  ),
  hintText: "Password"
  ),),
  ),
  ElevatedButton(onPressed: () async {
  //fetch all the user db
  final userlist = await HiveDb.instance.getUser();
  validateSignUp(context, userlist);
  },
  child: Text("Login"))
  ],
  ),
  );
  }

  void validateSignUp(BuildContext context, List<User> userlist) async {
  final uname = email.text.trim();
  final pwd = pass.text.trim();
  bool userFound = false;
  final validateEmail = EmailValidator.validate(uname);

  if (validateEmail == true) {
  await Future.forEach(userlist, (singleUser) {
  if (singleUser.email == uname) {
  userFound = true;
  } else {
  userFound = false;
  }
  });
  if (userFound == true) {
  ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text("data")));
  } else {
  final validatepassword = validatePassword(context,pwd);
  if (
  validatepassword == true
  ) {
  final user = User(email: uname, password: pwd);
  await HiveDb.instance.addUser(user);
  Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => Login_adapter()));
  ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text("success")));
  }
  }
  } else {
  ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text("Login failed")));
  }
  }

  bool validatePassword(BuildContext context, String pwd) {
  if (pwd.length < 6) {
  ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text("Password lenght should be>6!!")));
  return false;
  } else {
  return true;
  }


  }
  }

