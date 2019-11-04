import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget _buildGrid() => GridView.extent(
        maxCrossAxisExtent: 50,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 10,
        crossAxisSpacing: 40,
        children: _buildGridTileList(30),
      );

  List<Container> _buildGridTileList(int count) => List.generate(
      count,
      (i) => Container(
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(const Radius.circular(8)),
            color: Colors.blue,
          ),
          child: Text(i.toString())));

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Container(
            child: _buildGrid(),
          )),
    );
  }
}
