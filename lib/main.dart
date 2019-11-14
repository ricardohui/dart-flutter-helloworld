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
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final aTextFieldController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _descriptionFocusNode = FocusNode();
  @override
  void dispose() {
    aTextFieldController.dispose();
    _descriptionFocusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    aTextFieldController.addListener(_printLatestValue);
  }

  void _printLatestValue() {
    print("Second text field: ${aTextFieldController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            autofocus: true,
            controller: aTextFieldController,
            decoration: InputDecoration(labelText: 'Title', hintText: 'Hint'),
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(_descriptionFocusNode);
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextField(
            focusNode: _descriptionFocusNode,
            decoration:
                InputDecoration(labelText: 'Description', hintText: 'Hint'),
          ),
          RaisedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Processing data'),
                  ),
                );
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
