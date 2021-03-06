import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuizHandler;

  Result(this.resultScore, this.resetQuizHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8)
      resultText = "You are awesome and innocent";
    else if (resultScore <= 12)
      resultText = "Pretty Likable";
    else if (resultScore <= 18)
      resultText = "You are... strange";
    else
      resultText = "You are so bad!";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              "Restart Quiz!",
              style: TextStyle(fontSize: 18),
            ),
            onPressed: resetQuizHandler,
          )
        ],
      ),
    );
  }
}
