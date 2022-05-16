import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                    child: ReusableCard(
                  colour: Color(0xFFEEDEF7),
                )),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFFEEDEF7),
                  ),
                )
              ],
            ),
          ),
          const Expanded(
              child: ReusableCard(
            colour: Color(0xFFEEDEF7),
          )),
          Expanded(
              child: Row(
            children: const [
              Expanded(
                child: ReusableCard(
                  colour: Color(0xFFEEDEF7),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Color(0xFFEEDEF7),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.colour}) : super(key: key);
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
