import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/Quiz.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450.h,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data){
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(((data['question_index'] as int) + 1).toString(),style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['question'] as String,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Your Ans.",style: TextStyle(color: Colors.white),),
                          SizedBox(width: 10.w,),
                          Text(data['user_answer'] as String,style: TextStyle(fontSize: 17,color: Colors.lightGreenAccent),),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Correct Answer.",style: TextStyle(color: Colors.white),),
                          Text(data['correct_answer'] as String,style: TextStyle(fontSize: 17,color: Color(0xFF33FFCF)),),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],);
          }).toList()
        ),
      ),
    );
  }
}