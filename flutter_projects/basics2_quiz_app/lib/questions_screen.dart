import 'package:basics2_quiz_app/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:basics2_quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Question 1',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            AnswerButton("Answer 1", () {}),
            AnswerButton("Answer 2", () {}),
            AnswerButton("Answer 3", () {}),
            AnswerButton("Answer 4", () {}),
          ],
        ));
  }
}
