import 'package:flutter/material.dart';
import './main_drawer.dart';

class Home extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('This is Home'),
      ),
      drawer: MainDrawer(),
    );
  }
}
