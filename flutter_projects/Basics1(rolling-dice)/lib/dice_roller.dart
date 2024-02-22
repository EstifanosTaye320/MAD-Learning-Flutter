import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImage = "assets/images/dice-1.png";

  void rollDice() {
    setState(() {
      activeImage = 'assets/images/dice-4';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImage,
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
