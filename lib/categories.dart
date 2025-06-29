import 'package:e_ticaret_app/categories_model.dart';
import 'package:e_ticaret_app/products/cosmetics/cosmetic.dart';
import 'package:e_ticaret_app/products/clothes/clothes.dart';
import 'package:e_ticaret_app/products/products_model.dart';
import 'package:e_ticaret_app/products/stationery/stationery.dart';
import 'package:flutter/material.dart';

class MyCategories extends StatelessWidget {
  final List<CategoriesModel> categories;
  final List<ProductsModel> clothesList;
  final List<ProductsModel> cosmeticsList;
  final List<ProductsModel> stationeryList;

  final String _title = 'Kategoriler';

  const MyCategories({
    required this.categories,
    super.key,
    required this.clothesList,
    required this.cosmeticsList,
    required this.stationeryList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text(_title)),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final categori = categories[index];
          return Card(
            margin: EdgeInsets.all(8),
            elevation: 3,
            child: ListTile(
              leading: Image.asset(categori.categoriImage, width: 60, height: 100, fit: BoxFit.cover),
              title: Text('${categori.categoriName}'),
              onTap: () {
                if (categori.categoriName == 'Giyim') {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Clothes(clothes: clothesList)));
                } else if (categori.categoriName == 'Kozmetik') {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Cosmetic(cosmetics: cosmeticsList)));
                } else if (categori.categoriName == 'Kırtasiye') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Stationery(stationery: stationeryList)),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
