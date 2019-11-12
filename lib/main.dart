import 'package:flutter/material.dart';
import './categories_screen.dart';
import './favorites_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (ctx) => CategoriesScreen(),
        '/favorites': (ctx) => FavoritesScreen(),
      },
    );
  }
}
