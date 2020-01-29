import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favourit color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 3},
        {'text': 'Blue', 'score': 10},
        {'text': 'Green', 'score': 15},
      ],
    },
    {
      'questionText': 'What is your favourit animal ?',
      'answers': [
        {'text': 'Rabit', 'score': 5},
        {'text': 'Cow', 'score': 50},
        {'text': 'Cat', 'score': 20},
        {'text': 'Tiger', 'score': 9},
      ],
    },
    {
      'questionText': 'Who is your favourit instructor ?',
      'answers': [
        {'text': 'Rashed', 'score': 15},
        {'text': 'Rana', 'score': 1},
        {'text': 'Rahim', 'score': 8},
        {'text': 'Kawsar', 'score': 20},
      ],
    },
    {
      'questionText': 'What is your favourit food ?',
      'answers': [
        {'text': 'Pizza', 'score': 4},
        {'text': 'Barger', 'score': 25},
        {'text': 'Chicken', 'score': 3},
        {'text': 'Beef', 'score': 10},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LOGO'),
        ),
        body: _questionIndex <= _questions[_questionIndex].length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
