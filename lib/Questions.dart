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
          Colors.purple.shade500,
          Colors.indigo.shade600,
          Colors.indigo.shade800,
          Colors.indigo.shade600,
          Colors.purple.shade500,

        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          Text("Questions"),
          SizedBox(height: 40,),

          
          
        ],),
    ),
    );
  }
}