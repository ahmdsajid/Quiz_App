import 'package:flutter/material.dart';
import 'package:quiz_app/Data/Questions_data.dart';
import 'package:quiz_app/reusable_widget/Answere_button.dart';


class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  @override
  Widget build(BuildContext context) {
  
final currentquestion = questions[0];

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
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          Text(currentquestion.Text,style: TextStyle(color: Colors.white,fontSize: 20),),
          SizedBox(height: 40,),

          AnswereButton(Answeretext: currentquestion.Answere[0], ontap: () {  },),
          AnswereButton(Answeretext: currentquestion.Answere[1], ontap: () {  },),
          AnswereButton(Answeretext: currentquestion.Answere[2], ontap: () {  },),
          AnswereButton(Answeretext: currentquestion.Answere[3], ontap: () {  },),
          
        ],),
    ),
    );
  }
}