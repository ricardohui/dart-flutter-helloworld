import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  Widget build(BuildContext context) {
    final String questionText = "questionText";
    var questions = [
      {
        questionText: "What is your favorite color?",
        "answers": ["Black", "Red", "Green", "White"],
      },
      {
        "questionText": "What is your favorite animal?",
        "answers": ["Rabbit", "Snake", "Elephant", "Lion"],
      },
      {
        "questionText": "Who is your favorite instructor?",
        "answers": ["Ricardo", "Stephen", "Max", "Jacky"],
      }
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: Column(
              children: [
                Question(questions[questionIndex][questionText]),
              (qustions[questionIndex]['answers'] as List<String>).map((answer){return Answer(answer)})
              ],
            )));
  }
}
