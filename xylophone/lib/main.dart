// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildkey({Color? color, required int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNum);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(color: Colors.amber, soundNum: 1),
                buildkey(color: Colors.redAccent, soundNum: 2),
                buildkey(color: Colors.blueAccent, soundNum: 3),
                buildkey(color: Colors.brown, soundNum: 4),
                buildkey(color: Colors.yellowAccent, soundNum: 5),
                buildkey(color: Colors.pink, soundNum: 6),
                buildkey(color: Colors.cyanAccent, soundNum: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
