import 'package:flutter/material.dart';
import './models/counter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (ctx) => Counter(),
      child: MaterialApp(
        title: 'Provider Demo',
        theme: ThemeData(primarySwatch: Colors.red),
        home: new MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterValue = Consumer<Counter>(
      builder: (context, counter, child) {
        return Text('${counter.count}');
      },
    );
    // final counterData = Provider.of<Counter>(context);
    // final count = counterData.count;
    return Scaffold(
      floatingActionButton: Consumer<Counter>(
        builder: (context, counter, child) {
          return FloatingActionButton(
            onPressed: () => counter.increment(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          );
        },
      ),
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many time:'),
            counterValue,
          ],
        ),
      ),
    );
  }
}
