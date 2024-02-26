import 'package:basics2_quiz_app/data/questions.dart';
import 'package:basics2_quiz_app/results.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.answers, {super.key});

  final List<String> answers;

  List<Map<String, Object>> summaryData() {
    List<Map<String, Object>> summary = [];
    // int count = 0;

    for (var i = 0; i < answers.length; i++) {
      summary.add({
        "question-idex": i,
        "question": questions[i],
        "corrent_answer": questions[i].answers[0],
        "user_answer": answers[i],
      });

      // if (questions[i].answers[0] == answers[i]) {
      //   count++;
      // }
    }

    // summary.add({
    //   "count": count,
    // });

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Results(summaryData()),
      ),
    );
  }
}
