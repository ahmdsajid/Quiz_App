import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/Data/Questions_data.dart';
import 'package:quiz_app/Queston_Summary.dart';
import 'package:quiz_app/Quiz.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].Text,
        'correct_answer': questions[i].Answere[0],
        'user_answer': choosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    final numCorrectAnswer = summaryData.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return Scaffold(
      body: Container(
        height: 700.h,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
            Colors.deepPurpleAccent.shade400,
            Colors.deepPurple.shade500,
            //Colors.deepPurple.shade900,
            Colors.deepPurple.shade500,
            Colors.deepPurpleAccent.shade400
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Text(
                "You Have Answered $numCorrectAnswer out of $numTotalQuestion Correctly",
                style: TextStyle(
                  fontSize: 25.sp,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
             SizedBox(
              height: 30.h,
            ),
            QuestionSummary(summaryData: summaryData),
             SizedBox(
              height: 30.h,
            ),
      
      
            ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Quiz()));
            }, 
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.restart_alt,color: Colors.black,),
                SizedBox(width: 8.w,),
                Text('Restart Quiz',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
