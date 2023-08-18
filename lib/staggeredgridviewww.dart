import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: Stagg(),
  ));
}

class Stagg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Staggered grid view"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.green,
                  child: const Center(child: Icon(Icons.access_alarm_rounded)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.amberAccent,
                  child:const Icon(Icons.accessible_forward_rounded),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.orange,
                  child: const Icon(Icons.g_translate),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.deepPurple,
                  child: const Icon(Icons.h_mobiledata_outlined),
                ))
          ],
        ),
      ),
    );
  }
}
