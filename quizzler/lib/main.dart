// ignore_for_file: unnecessary_new, deprecated_member_use

import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 27, 46, 56),
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: QuizPage()),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  List<Questions> questionBank = [
    Questions('You can lead a cow down stairs but not up stairs.', false),
    Questions(
        'Approximately one quarter of human bones are in the feet.', true),
    Questions('A slug\'s blood is green.', true)
  ];
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[questionNumber].questionsText,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 25.0, color: Colors.white60),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              child: const Text(
                'Correct',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              onPressed: () {
                bool correctAnswers =
                    questionBank[questionNumber].questionsAnswers;
                if (correctAnswers == true) {
                  // ignore: avoid_print
                  print('correct');
                } else {
                  // ignore: avoid_print
                  print('incorrect');
                }
                setState(() {
                  questionNumber++;
                });
                //gg
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              child: const Text(
                'Incorrect',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              onPressed: () {
                bool correctAnswers =
                    questionBank[questionNumber].questionsAnswers;
                if (correctAnswers == false) {
                  // ignore: avoid_print
                  print('correct');
                } else {
                  // ignore: avoid_print
                  print('incorrect');
                }
                setState(() {
                  // scoreKeeper.add(const Icon(
                  //   Icons.close_outlined,
                  //   color: Colors.red,
                  // ));

                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
