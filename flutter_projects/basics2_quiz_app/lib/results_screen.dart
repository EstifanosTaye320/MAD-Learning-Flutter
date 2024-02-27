import 'package:basics2_quiz_app/data/questions.dart';
import 'package:basics2_quiz_app/results.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.answers, {super.key});

  final List<String> answers;

  List<Map<String, Object>> get summaryData {
    List<Map<String, Object>> summary = [];
    // int count = 0;

    for (var i = 0; i < answers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
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
    int totalQuestions = questions.length;
    int correctlyAnswered = summaryData
        .where(
          (data) => data["user_answer"] == data["corrent_answer"],
        )
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You have answerd $correctlyAnswered out of $totalQuestions questions correctly',
                style: const TextStyle(
                  color: Color.fromARGB(255, 188, 175, 175),
                  fontSize: 24,
                )),
            const SizedBox(height: 30),
            Results(summaryData),
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              icon: const Icon(Icons.refresh),
              label: const Text('Refresh'),
            ),
          ],
        ),
      ),
    );
  }
}
