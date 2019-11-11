import 'package:flutter/material.dart';
import './main_drawer.dart';

class About extends StatelessWidget {
  static const routeName = '/about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Text('This is About'),
      ),
      drawer: MainDrawer(),
    );
  }
}
