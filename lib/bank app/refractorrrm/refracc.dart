import 'package:flutter/material.dart';

class Stackz extends StatelessWidget {
  const Stackz({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
        ),
        Container(
          height: 100,
          color: Colors.red[700],
        ),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: SizedBox(
            height: 200,
            child: Card(
              elevation: 5,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 38,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1686781034536-2e762580114a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5NHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "FEDERAL BANK",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(width: 40,),
                      Row(
                        children: [
                          Text("NPR. 1,99,987.00",style: TextStyle(color: Colors.red,fontSize: 19,fontWeight: FontWeight.bold),),
                          SizedBox(width: 20,),
                          Icon(Icons.visibility,color: Colors.blueGrey,)
                        ],
                      ),
                      Text("654644688785341684",style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
