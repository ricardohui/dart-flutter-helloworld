import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
          child: Text(label),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
  Widget _titleSection = Container(
      padding: EdgeInsets.all(32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Kandersteg, Switzerland',
                    style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ));
    Color color = Theme.of(context).primaryColor;
    Widget _buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(color, Icons.call, ' CALL'),
          _buildButtonColumn(color, Icons.near_me, ' ROUTE'),
          _buildButtonColumn(color, Icons.share, ' SHARE'),
        ],
      ),
    );
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter layout demo'),
          ),
          body: Column(
            children: <Widget>[
              _titleSection,
              _buttonSection,
            ],
          )),
    );
  }
}
