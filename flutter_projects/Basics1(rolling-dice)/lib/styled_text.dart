import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      "hello world!",
      style: TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
