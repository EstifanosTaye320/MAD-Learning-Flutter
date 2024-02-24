import 'package:flutter/material.dart';

class ScreenChange extends StatefulWidget {
  const ScreenChange({super.key});

  @override
  State<ScreenChange> createState() => _ScreenChangeState();
}

class _ScreenChangeState extends State<ScreenChange> {
  void handleClick() {
    //..
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
            color: Color.fromARGB(255, 188, 175, 175),
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 199, 188, 188),
          ),
          onPressed: handleClick,
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
