import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:project3/api%20intergration/api_intergration_using_http/model/productModel.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;

  ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: CachedNetworkImage(
              imageUrl: product.image!,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            product.title!,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            maxLines: 2,
          ),
          Text(
            "${product.price!}\$",
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
