import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText =
          'Kamu cenderung pesimis dan bersifat negatif terutama disaat kamu mengalami kejadian buruk. Kamu cenderung menganggap apabila terjadi hal buruk maka situasi tidak akan membaik atau kembali normal lagi!';
    } else if (resultScore <= 12) {
      resultText =
          'Kamu adalah tipe orang yang optimis. Kamu percaya kehidupan ada campuran baik dan buruk tapi semua akan membaik. Kamu orang yang bisa menerima kenyataan & kemalangan dengan tenang. Kamu juga cenderung mengalami hidup dengan tidak stress dan tidak khawatir dengan hal buruk!';
    } else if (resultScore <= 16) {
      resultText =
          'Kamu adalah orang yang tegas dan mampu menghadapi tekanan. Kamu tidak menghabiskan waktu dengan bersedih jika ada masalah. Jika situasi memburuk, kamu akan membuang kekalahan dan cenderung berusaha mencari solusi / cara baru atas masalah tersebut!';
    } else {
      resultText =
          'Kamu adalah tipe yang tidak memiliki rasa takut dan tidak mengenal tekanan. Bagimu krisis atau masalah adalah kesempatan dan peluang untuk mencapai hal yang lebih baik. Namun terkadang karena selalu positif, kamu bertindak tanpa berfikir jernih dan terkadang berlebihan atau menjadi terlalu ambisius dan mengorbankan dirimu.!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Ulangi Quiz!',
              style: TextStyle(
                fontSize: 20.0,
                backgroundColor: Color.fromARGB(255, 198, 207, 203),
              ),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
