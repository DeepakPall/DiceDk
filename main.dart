import 'package:flutter/material.dart';
import 'dart:math';

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
  int leftDiceNumber = 1;
  int rightDicenumber = 1;
  void changeStateFace() {
    setState(() {
      rightDicenumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
// flex: 1,

/* child: Padding(
            padding: const EdgeInsets.all(16.0),*/
            child: FlatButton(
              onPressed: () {
                changeStateFace();
              },
              child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
/* child: Padding(
             padding: const EdgeInsets.all(16.0),*/
            child: FlatButton(
              onPressed: () {
                changeStateFace();
              },
              child: Image.asset('images/dice$rightDicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
