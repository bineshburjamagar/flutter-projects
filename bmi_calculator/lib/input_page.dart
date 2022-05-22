import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFA173E0);
const activeCardColor = Color(0xFFEEDEF7);

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
        title: const Text(
          'BMI CALCULATOR',
          textAlign: TextAlign.center,
        ),
        toolbarHeight: 90.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColor,
                )),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                )
              ],
            ),
          ),
          const Expanded(
              child: ReusableCard(
            colour: activeCardColor,
          )),
          Expanded(
              child: Row(
            children: const [
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
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
