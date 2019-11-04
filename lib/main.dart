import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget buildColorBox(Color color) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(30),
      color: color,
    ));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
          title: Text(
            'My First App',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          ),
          body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buildColorBox(Colors.grey),
                buildColorBox(Colors.red),
                buildColorBox(Colors.cyan),
                buildColorBox(Colors.yellow),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // verticalDirection: VerticalDirection.up,
                textDirection: TextDirection.rtl,
                children: [
                  buildColorBox(Colors.grey),
                  buildColorBox(Colors.red),
                  buildColorBox(Colors.cyan),
                  buildColorBox(Colors.yellow),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.green[500]),
                Icon(Icons.star, color: Colors.green[500]),
                Icon(Icons.star, color: Colors.green[500]),
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
              ],
            ),
          ],
          )),
      ),
    );
  }
}
