import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartHandler;
  Result(this.resultScore, this.restartHandler);

  String get resultPhrase{
      String resultText;
      if(resultScore <=6){
          resultText='you are ok';
      }
      else if(resultScore <=8){
        resultText="you are good";
      }
      else{
        resultText ="you are awesome";
      }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: <Widget>[
        Text(resultPhrase, style: TextStyle(fontSize:36, fontWeight: FontWeight.bold)),
        FlatButton(onPressed: restartHandler, child: Text('Restart Quiz'), textColor: Colors.blue,)
      ],
    ));
  }
}