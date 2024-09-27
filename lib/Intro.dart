import 'package:flutter/material.dart';
import 'package:quiz_app/Questions.dart';

class MyIntro extends StatelessWidget {
  const MyIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-app.png',
                width: 300,
              ),
              const SizedBox(
                height: 100,
              ),
              OutlinedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Questions()));
              },

              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white, width: 3)
                ),

              child: const Text('Start Quiz',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              )
            ],
          ),
        ),
      ),
    );
  }
}
