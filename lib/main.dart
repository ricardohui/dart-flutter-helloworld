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
  var memorylastSecondDisplayText = '0';
  var operation = '';
  handleEvent(String value) {
    switch (value) {
      case 'C':
        setState(() {
          displayText = '0';
        });
        break;
      case '+':
      case '-':
      case '*':
      case '/':
        operation = value;
        memorylastSecondDisplayText = displayText;
        setState(() {
          displayText = '0';
        });
        break;
      case '=':
        setState(() {
          switch (operation) {
            case '+':
              final result = int.parse(memorylastSecondDisplayText) +
                  int.parse(displayText);
              displayText = result.toString();
              break;
            case '-':
              final result = int.parse(memorylastSecondDisplayText) -
                  int.parse(displayText);
              displayText = result.toString();
              break;
            case '*':
              final result = int.parse(memorylastSecondDisplayText) *
                  int.parse(displayText);
              displayText = result.toString();
              break;
            case '/':
              final result = int.parse(memorylastSecondDisplayText) *
                  int.parse(displayText);
              displayText = result.toString();
              break;
            default:
          }
          memorylastSecondDisplayText = '0';
          operation = '';
        });
        break;
      default:
        setState(() {
          if (displayText == '0') {
            displayText = value;
          } else {
            displayText = displayText + value;
          }
        });
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Calculator'),
        ),
        body: Container(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new DisplayBar(displayText: displayText),
            Expanded(
              child: Container(
                  child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
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
                  ),
                  Expanded(
                    child: Row(
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
                  ),
                  Expanded(
                    child: Row(
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
                  ),
                  Expanded(
                    child: Row(
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
                  ),
                ],
              )),
            )
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
      margin: EdgeInsets.all(4),
      width: (sizeData.width - 32) / 4,
      child: RaisedButton(
        onPressed: () {
          handler(displayText);
        },
        padding: EdgeInsets.all(12),
        color: Colors.blue,
        child: Container(
          child: Center(
            child: Text(
              displayText,
              style: TextStyle(fontSize: 36),
            ),
          ),
        ),
      ),
    );
  }
}
