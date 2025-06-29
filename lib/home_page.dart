import 'package:e_ticaret_app/categories.dart';
import 'package:e_ticaret_app/categories_data.dart';
import 'package:e_ticaret_app/products/stationery/stationery_data.dart';
import 'package:flutter/material.dart';
import 'package:e_ticaret_app/products/clothes/clothes_data.dart';
import 'package:e_ticaret_app/products/cosmetics/cosmetic_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _title = 'Başla';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isLandscape = constraints.maxWidth > constraints.maxHeight;

          final imageSize = isLandscape ? constraints.maxHeight * 0.5 : constraints.maxWidth * 0.6;
          final buttonSize = isLandscape ? 45.0 : 50.0;

          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    _HomePageImage().homePageImage,
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyCategories(
                          categories: categoriesList,
                          clothesList: clothesList,
                          cosmeticsList: cosmeticsList,
                          stationeryList: stationeryList,
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    minimumSize: Size(200, buttonSize),
                  ),
                  child: Text(_title, style: const TextStyle(fontSize: 18)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _HomePageImage {
  final String homePageImage = "assets/png/e-ticaret.png";
}
