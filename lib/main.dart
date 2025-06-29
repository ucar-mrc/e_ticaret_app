import 'package:e_ticaret_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(),
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(centerTitle: true, systemOverlayStyle: SystemUiOverlayStyle.light),
      ),
      home: HomePage(),
    );
  }
}
