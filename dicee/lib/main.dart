// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.indigoAccent,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
     var leftDiceNumber = 1;
    var rightDiceNumber = 2;
  void randomNum() {
 
     setState(() {
                  randomNum()
                  rightDiceNumber = Random().nextInt(6) + 1;
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomNum();
               
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  randomNum();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}
