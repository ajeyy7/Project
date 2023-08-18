import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: BottomSheettt(),));
}
class BottomSheettt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom sheet with image on tap"),
      ),
      body: Center(
        child: GestureDetector(   //can also use inkwell for gesterdectector 
          onLongPress: ()=>showSheet(context),
            child: Image.asset("assets/image/gg6.jpg")),
      ),
    );
  }

 void showSheet(BuildContext context) {
    showModalBottomSheet(context: context,
        builder: (context){
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: FaIcon(FontAwesomeIcons.snapchat,color: Colors.green),
              title: Text("Snapchat"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.whatsapp,),title: Text('whatsapp'),
            )
          ],
        ),
      );
        });
 }
}
