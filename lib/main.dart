import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var displayText = '0';
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Calculator'),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            new DisplayBar(displayText: displayText),
            Container(
                child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Keypad(
                      displayText: '9',
                    ),
                    Keypad(
                      displayText: '9',
                    ),
                    Keypad(
                      displayText: '9',
                    ),
                    Keypad(
                      displayText: '9',
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Keypad(
                      displayText: '6',
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Keypad(
                      displayText: '3',
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Keypad(
                      displayText: 'C',
                    ),
                  ],
                ),
              ],
            ))
          ],
        )),
      ),
    );
  }
}

class DisplayBar extends StatelessWidget {
  const DisplayBar({
    Key key,
    @required this.displayText,
  }) : super(key: key);

  final String displayText;

  @override
  Widget build(BuildContext context) {
    var sizeData = MediaQuery.of(context).size;
    return Container(
      width: sizeData.width,
      decoration: BoxDecoration(color: Colors.red),
      child: Text(
        displayText,
        style: TextStyle(fontSize: 72),
        textAlign: TextAlign.right,
      ),
    );
  }
}

class Keypad extends StatelessWidget {
  final String displayText;
  Keypad({@required this.displayText});
  @override
  Widget build(BuildContext context) {
    var sizeData = MediaQuery.of(context).size;
    return Container(
      width: (sizeData.width - 64) / 4,
      height: (sizeData.height - 228) / 4,
      child: Center(
          child: Text(
        displayText,
        style: TextStyle(fontSize: 36),
      )),
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(32),
      color: Colors.blue,
    );
  }
}
