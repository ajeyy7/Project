import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project3/api%20intergration/api_intergration_using_http/controller/product_controller.dart';
import 'package:project3/api%20intergration/api_intergration_using_http/screens/home/widget/product_tile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProductHome(),
  ));
}

class ProductHome extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: SizedBox(
        child: Obx(() {
          if (productController.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.builder(itemCount: productController.productList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2), itemBuilder: (context,index){
                  return ProductTile(productController.productList[index]);
            });
          }
        }),
      ),
    );
  }
}
