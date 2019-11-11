import 'package:flutter/material.dart';
import './home_screen.dart';
import './about_screen.dart';
import './contact_screen.dart';
import './products_screen.dart';

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
        '/': (ctx) => Home(),
        Products.routeName: (ctx) => Products(),
        ContactUs.routeName: (ctx) => ContactUs(),
        About.routeName: (ctx) => About()
      },
    );
  }
}
