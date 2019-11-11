import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Container(
          child: Text('somethiing'),
        ),
        drawer: MainDrawer(),
      ),
    );
  }
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Text('Home'),
        Text('About'),
        Text('Products'),
        Text('Contact Us'),
      ],
    ));
  }
}
