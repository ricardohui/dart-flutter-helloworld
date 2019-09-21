import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.deepPurpleAccent,
          child: Text("Answer 1"),
          onPressed: this.selectHandler,
        ));
  }
}
