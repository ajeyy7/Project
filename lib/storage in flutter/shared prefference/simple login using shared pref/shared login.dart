import 'package:flutter/material.dart';
import 'package:project3/storage%20in%20flutter/shared%20prefference/simple%20login%20using%20shared%20pref/shared%20home.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: SharedLogin(),
  ));
}

class SharedLogin extends StatefulWidget {
  const SharedLogin({super.key});

  @override
  State<SharedLogin> createState() => _SharedLoginState();
}

class _SharedLoginState extends State<SharedLogin> {
  final email = TextEditingController();
  final pwd = TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;

  @override
  void initState() {
    check_if_user_already_login();
    super.initState();
  }

  void check_if_user_already_login() async {
    preferences = await SharedPreferences.getInstance();
    newuser = preferences.getBool('newuser') ?? true;

    if (newuser == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SharedHome()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: pwd,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                preferences = await SharedPreferences.getInstance();
                String username = email.text;
                String pass = pwd.text;
                String? storeduname = preferences.getString('uname');
                String? storedpassword = preferences.getString('pwd');
                if (storeduname == username && storedpassword == pass) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SharedHome()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Invalid username or password"),
                    backgroundColor: Colors.red,
                  ));
                }

                // if(username !="" && pass !=""){
                //   preferences.setString('uname', username);
                //   preferences.setString('password', pass);
                //   preferences.setBool('userlogin', false);
                //
                //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SharedHome()));
                // }
                email.text = "";
                pwd.text = "";
              },
              child: Text("Login"),
              style: ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(Colors.green)),
            )
          ],
        ),
      ),
    );
  }
}
