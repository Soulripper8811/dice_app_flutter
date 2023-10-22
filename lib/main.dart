import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purpleAccent,
            title: Text(
              'Diceeeee',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeImageRandom() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeImageRandom();
                },
                child: Image.asset('image/dice$leftDiceNumber.png')),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeImageRandom();
                },
                child: Image.asset('image/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}
