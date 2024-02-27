import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  // void printing() {
  //   print(summaryData);
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: summaryData.map((data) {
            return Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TextButton(onPressed: printing, child: const Text('text'))
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: data["corrent_answer"] == data["user_answer"]
                        ? Colors.blue[200]
                        : Colors.red[200],
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    ((data["question_index"] as int) + 1).toString(),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data["question"] as String,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        data["user_answer"] as String,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor:
                              data["corrent_answer"] == data["user_answer"]
                                  ? Colors.blue[200]
                                  : Colors.red[200],
                          decorationThickness: 2,
                          color: data["corrent_answer"] == data["user_answer"]
                              ? Colors.blue[200]
                              : Colors.red[200],
                        ),
                      ),
                      Text(
                        data["corrent_answer"] as String,
                        style: TextStyle(
                          color: Colors.blue[200],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
