import 'package:flutter/material.dart';

class MiWidget extends StatelessWidget {
  final ImageProvider myimage;
  final String name;
  final String price;
  const MiWidget({
    super.key, required this.name , required this.myimage, required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: myimage,width: 100,height: 100,),
          Text(name),
          Text(price),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(minimumSize: const Size(10, 30)),
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  label: const Text("FAV")),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(minimumSize: const Size(10, 30)),
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_bag_outlined),
                  label: const Text("Buy"))
            ],
          )
        ],
      ),
    );
  }
}
