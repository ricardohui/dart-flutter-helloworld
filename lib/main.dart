import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  final questions = const [
    {
      "questionText": "What is your favorite color?",
      "answers": [
        {'text': "Black", "score": 2},
        {"text": "Red", "score": 1},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 4}
      ],
    },
    {
      "questionText": "What is your favorite animal?",
      "answers": [
        {"score": 4, "text": "Rabbit"},
        {"score": 3, "text": "Snake"},
        {"score": 2, "text": "Elephant"},
        {"text": "Lion", "score": 1}
      ],
    },
    {
      "questionText": "Who is your favorite instructor?",
      "answers": [
        {"text": "Ricardo", "score": 4},
        {"text": "Stephen", "score": 3},
        {"text": "Max", "score": 2},
        {"text": "Jacky", "score": 1}
      ],
    }
  ];
  void answerQuestion(int score) {
    totalScore += score;
    if (questionIndex < questions.length) {}
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: questionIndex < questions.length
                ? Quiz(
                    answerQuestion: answerQuestion,
                    questions: questions,
                    questionIndex: questionIndex,
                  )
                : Result(totalScore, _resetQuiz)));
  }
}
