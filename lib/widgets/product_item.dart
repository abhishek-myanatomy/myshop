import 'package:flutter/material.dart';
import 'package:myshop/screens/product_detail_screen.dart';

import '../models/product.dart';

class ProductItem extends StatelessWidget {
  final Product info;
  ProductItem({
    required this.info,
  });
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: const Icon(Icons.favorite),
            color: Colors.deepOrange,
            onPressed: () {},
          ),
          title: Text(
            info.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.deepOrange,
            ),
            onPressed: () {},
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (ctx) => ProductDetailScreen(
                        productdetail: info,
                      )),
            );
          },
          child: Image.network(info.imageUrl),
        ),
      ),
    );
  }
}
