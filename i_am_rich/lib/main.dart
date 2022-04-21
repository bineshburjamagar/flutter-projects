import 'package:flutter/material.dart';

//starting point for every flutter app is main()
void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text('I Am Rich'),
      backgroundColor: Colors.blueGrey[900],
    ),
    backgroundColor: Colors.blueGrey[300],
    body: const Center(
      child: Image(
        image: AssetImage('./images/diamond.png'),
      ),
    ),
  )));
}
