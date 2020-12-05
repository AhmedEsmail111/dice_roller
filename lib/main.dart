import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImageNum = Random().nextInt(6) + 1;
  int rightImageNum = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomNum();
              },
              child: Image.asset('images/dice$leftImageNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomNum();
              },
              child: Image.asset('images/dice$rightImageNum.png'),
            ),
          ),
        ],
      ),
    );
  }

  void randomNum() {
    setState(
      () {
        leftImageNum = Random().nextInt(6) + 1;
        rightImageNum = Random().nextInt(6) + 1;
      },
    );
  }
}
