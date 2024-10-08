import 'package:flutter/material.dart';
import 'package:quiz_app/Data/Questions_data.dart';
import 'package:quiz_app/reusable_widget/Answere_button.dart';


class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  var currentQuestionIndex = 0;

  void answerQuestion(){
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
  
final currentquestion = questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade400,
        elevation: 0,
        title: Text("Flutter Quiz"),
      ),

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
        child:  Container(
         
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          
            Text(currentquestion.Text,style: TextStyle(color: Colors.white,fontSize: 20),
            textAlign: TextAlign.center,
            ),
            SizedBox(height: 30,),
          
            ...currentquestion.getshuffledAnswer().map((answer){
              return AnswereButton(Answeretext: answer, ontap: answerQuestion);
            })
            
          ],),
        ),
    ),
    );
  }
}