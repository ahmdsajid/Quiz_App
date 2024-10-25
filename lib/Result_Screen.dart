import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];

    return summary;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.deepPurpleAccent.shade200,
        Colors.deepPurple.shade500,
        Colors.deepPurple.shade900,
        Colors.deepPurple.shade500,
        Colors.deepPurpleAccent.shade200
          ],
          begin: Alignment.topLeft, end: Alignment.bottomLeft
          )
        ),


        child: Column(
          children: [
            const Text("You Have answered X out of Y Correctly"),
            const SizedBox(height: 30,),
            const Text("quistions and answeres"),
            TextButton(onPressed: (){}, child: const Text("Restart Quiz")),
          ],
        ),
      ),
    );
  }
}