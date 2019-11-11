import 'package:flutter/material.dart';
import './main_drawer.dart';

class Products extends StatelessWidget {
  static const routeName = '/products';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Center(
        child: Text('This is Products'),
      ),
      drawer: MainDrawer(),
    );
  }
}
