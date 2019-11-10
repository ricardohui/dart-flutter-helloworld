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

  handleEvent(String value) {
    setState(() {
      displayText = value;
    });
  }

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
                      handler: handleEvent,
                    ),
                    Keypad(
                      displayText: '8',
                      handler: handleEvent,
                    ),
                    Keypad(
                      displayText: '7',
                      handler: handleEvent,
                    ),
                    Keypad(
                      displayText: '+',
                      handler: handleEvent,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Keypad(
                      displayText: '6',
                      handler: handleEvent,
                    ),
                    Keypad(
                      displayText: '5',
                      handler: handleEvent,
                    ),
                    Keypad(
                      displayText: '4',
                      handler: handleEvent,
                    ),
                    Keypad(
                      displayText: '-',
                      handler: handleEvent,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Keypad(
                      displayText: '3',
                      handler: handleEvent,
                    ),
                    Keypad(
                      displayText: '2',
                      handler: handleEvent,
                    ),
                    Keypad(
                      displayText: '1',
                      handler: handleEvent,
                    ),
                    Keypad(
                      displayText: '*',
                      handler: handleEvent,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Keypad(
                      displayText: 'C',
                      handler: handleEvent,
                    ),
                    Keypad(
                      displayText: '0',
                      handler: handleEvent,
                    ),
                    Keypad(
                      displayText: '=',
                      handler: handleEvent,
                    ),
                    Keypad(
                      displayText: '/',
                      handler: handleEvent,
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
  final Function handler;
  Keypad({@required this.displayText, @required this.handler});
  @override
  Widget build(BuildContext context) {
    var sizeData = MediaQuery.of(context).size;
    return Container(
      width: (sizeData.width - 64) / 4,
      height: (sizeData.height - 228) / 4,
      child: FlatButton(
        child: Center(
          child: Text(
            displayText,
            style: TextStyle(fontSize: 36),
          ),
        ),
        onPressed: () {
          handler(displayText);
        },
      ),
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(32),
      color: Colors.blue,
    );
  }
}
