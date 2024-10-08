import 'package:flutter/material.dart';
import 'package:quiz_app/Intro.dart';
import 'package:quiz_app/Questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  var ActiveScreen ="intro-screen";

  void SwitchScreen (){
    setState(() {
      ActiveScreen = "question-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.green.shade600,
          Colors.teal.shade600,
          Colors.teal.shade700,
          Colors.teal.shade600,
          Colors.green.shade600,

          // Colors.red.shade500,
          // Colors.orange.shade500,
          // Colors.yellow.shade500,
          // Colors.green.shade500,
          // Colors.blue.shade500,
          // Colors.indigo.shade500,
          // Color(0xFF8A2BE2)
         ], begin: Alignment.topLeft, end: Alignment.bottomRight)
        ),
        child: ActiveScreen == "intro-screen"? MyIntro(SwitchScreen) : Questions(),
      ),
     ),
    );
  }
}