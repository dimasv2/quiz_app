import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/first_app/quiz.dart';
import 'package:flutter_complete_guide/first_app/result.dart';

// import './quiz.dart';
// import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

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
      'questionText': 'apa warna favoritmu?',
      'answers': [
        {'text': 'hitam', 'score': 10},
        {'text': 'merah', 'score': 5},
        {'text': 'biru', 'score': 3},
        {'text': 'putih', 'score': 1},
      ],
    },
    {
      'questionText': 'apa hewan kesukaanmu?',
      'answers': [
        {'text': 'kelinci', 'score': 3},
        {'text': 'kucing', 'score': 11},
        {'text': 'gajah', 'score': 5},
        {'text': 'tikus', 'score': 9},
      ],
    },
    {
      'questionText': 'apa makanan kesukaanmu?',
      'answers': [
        {'text': 'ayam bakar', 'score': 1},
        {'text': 'mie ayam', 'score': 1},
        {'text': 'nasi goreng', 'score': 1},
        {'text': 'pecel', 'score': 1},
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
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.green,
        ),
        body: _questionIndex < _questions.length
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
