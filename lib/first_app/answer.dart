import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 50,
      child: SizedBox(
        height: 100.0,
        width: 100.0,
        child: RaisedButton(
          elevation: 30.0,
          color: Colors.white,
          textColor: Colors.black,
          child: Text(answerText),
          onPressed: selectHandler,
        ),
      ),
    );
  }
}
