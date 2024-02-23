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
          color: const Color.fromARGB(255, 118, 99, 150),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
            color: Color.fromARGB(255, 115, 89, 161),
            fontSize: 30,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton(
          style: const ButtonStyle(
              foregroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 116, 90, 163)),
              textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 20))),
          onPressed: handleClick,
          child: const Text('--> Start Quiz'),
        ),
      ],
    );
  }
}
