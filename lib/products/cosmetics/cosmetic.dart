import 'package:e_ticaret_app/products/product_card.dart';
import 'package:e_ticaret_app/products/products_model.dart';
import 'package:flutter/material.dart';

class Cosmetic extends StatelessWidget {
  final List<ProductsModel> cosmetics;
  const Cosmetic({required this.cosmetics, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: const Text('Kozmetik')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: cosmetics.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final product = cosmetics[index];
            return ProductCard(product: product);
          },
        ),
      ),
    );
  }
}
