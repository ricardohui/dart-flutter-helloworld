import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/about_screen.dart';
import 'package:flutter_complete_guide/contact_screen.dart';
import 'package:flutter_complete_guide/products_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, Function tapHandler) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        buildListTile('Home', () {
          Navigator.of(context).pushReplacementNamed('/');
        }),
        buildListTile('About', () {
          Navigator.of(context).pushNamed(About.routeName);
        }),
        buildListTile('Product', () {
          Navigator.of(context).pushNamed(Products.routeName);
        }),
        buildListTile('Contact Us', () {
          Navigator.of(context).pushNamed(ContactUs.routeName);
        }),
      ],
    ));
  }
}
