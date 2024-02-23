import 'package:basics2_quiz_app/screen_change.dart';
import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 30, 3, 78),
                Color.fromARGB(255, 79, 9, 201),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: ScreenChange(),
          ),
        ),
      ),
    ),
  );
}
