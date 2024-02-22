import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceFace = 2;

  void rollDice() {
    setState(() {
      diceFace = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceFace.png',
          width: 200,
        ),
        const SizedBox(
          // another way to add padding
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              // padding: const EdgeInsets.only(
              //   top: 20,
              // ),
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          // child: const StyledText("Roll Dice"),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
