import 'package:flutter/material.dart';
import 'package:project3/passing%20data%20between%20screens/dummy%20data.dart';

class ProductDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final id= ModalRoute.of(context)?.settings.arguments; //to receive value from previous page
    final productFromList =products.firstWhere((element) => element['id']== id);
    return Scaffold(
appBar:  AppBar(
  title: Text(productFromList['name']),
),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(productFromList['image1']))
              ),
            ),
            Text(productFromList['name'],
            style: TextStyle(fontSize:40),
            ),
            Text(
              productFromList['decription'],
              style: TextStyle(fontSize: 20),
            ),
            Text('${productFromList['rating']}',
            style: TextStyle(fontSize: 40),),
            Text('${productFromList['price']}',
            style: TextStyle(fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
