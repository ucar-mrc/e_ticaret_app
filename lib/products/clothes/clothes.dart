import 'package:e_ticaret_app/products/product_card.dart';
import 'package:e_ticaret_app/products/products_model.dart';
import 'package:flutter/material.dart';

class Clothes extends StatelessWidget {
  final List<ProductsModel> clothes;
  const Clothes({required this.clothes, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: const Text('Giyim')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: clothes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final product = clothes[index];
            return ProductCard(product: product);
          },
        ),
      ),
    );
  }
}
