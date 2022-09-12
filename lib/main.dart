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
      'questionText':
          '1. Suatu hari seekor burung biru masuk ke dalam kamar kamu melalui jendela dan terperangkap didalam. Kamu tertarik dan memutuskan untuk memeliharanya. Akan tetapi esoknya kamu terkejut karena burung itu berubah warna menjadi kuning, dan esoknya lagi berubah warna menjadi merah terang, dan hari ketiga berubah menjadi warna hitam. Menurutmu burung tersebut akan berubah menjadi warna apa di hari ke-4?',
      'answers': [
        {
          'text':
              'A. Burung tersebut tidak berubah warna. Tetap berwarna hitam',
          'score': 10
        },
        {'text': 'B. Berubah kembali menjadi biru', 'score': 5},
        {'text': 'C. Berubah Jadi Putih', 'score': 3},
        {'text': 'D. Berubah jadi Emas', 'score': 1},
      ],
    },
    {
      'questionText':
          '2. Sebuah mug (cangkir besar) berwarna putih polos diberikan kepada kamu bersama dengan kuas berwarna biru. Kamu diminta untuk melakukan pola atau motif pada mug tersebut. Kira-kira pola atau motif apa yang akan kamu lukis ?',
      'answers': [
        {'text': 'A. Garis-garis', 'score': 3},
        {'text': 'B. Titik-titik acak dan bersilang', 'score': 11},
        {'text': 'C. Centang', 'score': 5},
        {'text': 'D. Garis-garis berombak', 'score': 9},
      ],
    },
    {
      'questionText':
          '3. Pertama, bayangkan kamu memandang hamparan langit yang membuatmu bersemangat dan bahagia. Lalu, alihkan mata untuk membayangkan pemandangan lain. Manakah bayangan berikut yang membuat kamu santai dan tenang ?',
      'answers': [
        {'text': 'A. Dataran penuh salju putih', 'score': 1},
        {'text': 'B. Lautan biru', 'score': 2},
        {'text': 'C. Gunung yang hijau', 'score': 2},
        {'text': 'D. Taman yang penuh dengan bunga', 'score': 2},
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
