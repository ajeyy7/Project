import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ExitAppAlert(),));
}
class ExitAppAlert extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert()async{
      return await showDialog(context: context, builder:(context){
        return AlertDialog(
          title: Text("Exit"),
          content: Text("Do you really want to exit"),
         actions: [
           ElevatedButton(onPressed: (){
             Navigator.of(context).pop(true);
           }, child: Text("Yes"))
         ],
        );
      });
    }
    return WillPopScope(
        onWillPop: showAlert,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Exit from the app"),
          ),
          body: Center(child: Text("Press back button to exit"),),
        ),
    );
  }
}
