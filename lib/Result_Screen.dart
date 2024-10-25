import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("You Have answered X out of Y Correctly"),
          SizedBox(height: 30,),
          Text("quistions and answeres"),
          TextButton(onPressed: (){}, child: Text("Restart Quiz")),
        ],
      ),
    );
  }
}