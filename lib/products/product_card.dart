import 'package:flutter/material.dart';
import 'package:e_ticaret_app/products/products_model.dart';
import 'package:e_ticaret_app/products/products_padding.dart';
import 'package:e_ticaret_app/products/product_detail.dart';

class ProductCard extends StatelessWidget {
  final ProductsModel product;

  const ProductCard({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail(product: product)));
      },
      child: Card(
        color: Colors.black87,
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(aspectRatio: 1, child: Image.asset(product.productImage, fit: BoxFit.cover)),
            ProductsNamePadding(product: product),
            ProductsPricePadding(product: product),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
