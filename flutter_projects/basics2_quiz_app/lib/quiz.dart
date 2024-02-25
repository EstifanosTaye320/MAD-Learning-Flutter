import 'package:basics2_quiz_app/questions_screen.dart';
import 'package:basics2_quiz_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> answers = [];
  var activeScreen = "start-screen";

  void selectAnswer(answer) {
    answers.add(answer);
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? screenWidget;

    if (activeScreen == "start-screen") {
      screenWidget = StartScreen(switchScreen);
    } else {
      screenWidget = QuestionScreen(selectAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 72, 3, 78),
                Color.fromARGB(255, 156, 9, 201),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
