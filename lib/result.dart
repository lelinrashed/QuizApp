import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 30) {
      resultText = 'You are awesome and innocence !';
    } else if (resultScore <= 100) {
      resultText = 'Pretty Likeable !';
    } else {
      resultText = 'You are someting strange !';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(child: Text('Restart Quiz'), onPressed: resetHandler,)
        ],
      ),
    );
  }
}
