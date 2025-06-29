import 'package:flutter/material.dart';
import 'package:e_ticaret_app/products/products_model.dart';

class ProductsPricePadding extends StatelessWidget {
  const ProductsPricePadding({super.key, required this.product});

  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        '${product.productPrice} TL',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class ProductsNamePadding extends StatelessWidget {
  const ProductsNamePadding({super.key, required this.product});

  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        product.productName,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
