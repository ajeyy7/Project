import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project3/slivers.dart';
import 'package:project3/stackExx.dart';
void main(){
  runApp(MaterialApp(home: IntroScreenn(),));
}
class IntroScreenn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w900,fontSize: 40,color: Colors.redAccent
      ),
      bodyTextStyle: GoogleFonts.aBeeZee(
        fontStyle: FontStyle.italic,fontSize: 20,color: Colors.red
      ),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black,
          Colors.black12,
          Colors.black26,
          Colors.black38
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.bottomRight)
      )
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: 'First Page',
          body: "Introduction Screen shows the details of the app and demo of pages",
          image:IntroImage("https://images.unsplash.com/photo-1682686580224-cd46ea1a6950?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
        ),
        PageViewModel(
          decoration: pageDecoration,
            title: 'First Page',
            body: "Introduction Screen shows the details of the app and demo of pages",
            image:IntroImage("https://images.unsplash.com/photo-1692271631461-ad427f065c0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
        ),
        PageViewModel(
          decoration: pageDecoration,
            title: 'First Page',
            body: "Introduction Screen shows the details of the app and demo of pages",
            image:IntroImage("https://images.unsplash.com/photo-1691745034385-d5376238a97c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2OHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
        )
      ],
      onDone: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Stackex())),
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Sliverss())),
    showSkipButton: true,
      skip: Text('Skip'),
      next: Icon(Icons.arrow_forward),
      done: Text("done"),
      dotsDecorator: DotsDecorator(
        size: Size(10, 12),
        color: Colors.grey,
        activeSize: Size(25, 12),
        activeColor: Colors.yellow,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        )
      ),
    );
  }

  Widget IntroImage(String image) {
    return Align(
      alignment: Alignment.center,
      child: Image.network(image,width: 500,),
    );
  }
}
