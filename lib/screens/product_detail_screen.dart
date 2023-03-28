import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product productdetail;

  ProductDetailScreen({
    required this.productdetail,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productdetail.title),
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: 400,
            child: Image.network(
              productdetail.imageUrl,
            ),
          ),
          Text(
            productdetail.description,
            style: TextStyle(fontSize: 25),
          ),
          Text(
            'Price : ${productdetail.price}',
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}
