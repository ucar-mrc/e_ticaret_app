import 'package:flutter/material.dart';
import 'package:e_ticaret_app/products/products_model.dart';

class ProductDetail extends StatelessWidget {
  final ProductsModel product;

  const ProductDetail({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.productName), backgroundColor: Colors.green),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.70,
                  color: Colors.black,
                  child: Image.asset(
                    product.productImage,
                    fit: BoxFit.contain, // ⚠️ responsive davranır
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        product.productName,
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12),
                      Text('${product.productPrice} TL', style: const TextStyle(fontSize: 20, color: Colors.green)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
