import 'package:flutter/material.dart';
import 'package:project3/storage%20in%20flutter/shared%20prefference/simple%20login%20using%20shared%20pref/shared%20login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHome extends StatefulWidget {
  const SharedHome({super.key});

  @override
  State<SharedHome> createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
  late SharedPreferences preferences;
  late String username;
  
  @override
  void initState() {
   fetchData();
    super.initState();
  }
  void fetchData()async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString('uname')!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Welcome $username"),
      SizedBox(height: 20,
      ),
      ElevatedButton(onPressed: (){
        preferences.setBool('newuser', true);
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SharedLogin()));
      }, child: Text("Logout"))
    ],
  ),
),
    );
  }

}
