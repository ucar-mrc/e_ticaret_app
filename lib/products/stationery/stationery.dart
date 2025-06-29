import 'package:e_ticaret_app/products/product_card.dart';
import 'package:e_ticaret_app/products/products_model.dart';
import 'package:flutter/material.dart';

class Stationery extends StatelessWidget {
  final List<ProductsModel> stationery;
  const Stationery({super.key, required this.stationery});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: const Text('Kırtasiye')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: stationery.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final product = stationery[index];
            return ProductCard(product: product);
          },
        ),
      ),
    );
  }
}
