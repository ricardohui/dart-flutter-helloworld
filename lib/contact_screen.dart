import 'package:flutter/material.dart';
import './main_drawer.dart';

class ContactUs extends StatelessWidget {
  static const routeName = '/contactus';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Center(
        child: Text('This is Contact Us'),
      ),
      drawer: MainDrawer(),
    );
  }
}
