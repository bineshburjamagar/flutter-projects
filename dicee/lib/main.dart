// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  // ignore: avoid_print
                  print('left button is clicked');
                },
                child: Image.asset('images/dice1.png')),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  // ignore: avoid_print
                  print('right button is clicked');
                },
                child: Image.asset('images/dice1.png')),
          ),
        ],
      ),
    );
  }
}
