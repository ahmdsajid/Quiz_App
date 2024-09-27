import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.purple.shade600,
          Colors.teal.shade500,
          Colors.teal.shade700,
          Colors.teal.shade500,
          Colors.purple.shade600,

        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
    )
    );
  }
}