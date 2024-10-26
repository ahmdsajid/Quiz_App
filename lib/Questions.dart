import 'package:flutter/material.dart';
import 'package:quiz_app/Data/Questions_data.dart';
import 'package:quiz_app/reusable_widget/Answere_button.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;
  List<String?> answers = List.filled(15, null);

  void answerQuestion(String selectAnswer) {
    widget.onSelectAnswer(selectAnswer);
    setState(() {
      answers[currentQuestionIndex] = selectAnswer;
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      }
    });
  }

  void previousQuestion() {
    setState(() {
      if (currentQuestionIndex > 0) {
        currentQuestionIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.help_center,color: Colors.white,size: 30,),

              SizedBox(width: 10,),

              Text(
                "Flutter Quiz App",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold,),
              ),
            ],
          ),
          backgroundColor: Colors.deepPurple.shade900,
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.deepPurpleAccent.shade400,
            Colors.deepPurple.shade500,
            //Colors.deepPurple.shade900,
            Colors.deepPurple.shade500,
            Colors.deepPurpleAccent.shade400
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  currentQuestion.Text,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                ...currentQuestion.getshuffledAnswer().map((answer) {
                  return AnswerButton(
                      answerText: answer,
                      ontap: () {
                        answerQuestion(answer);
                      });
                }),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed:
                            currentQuestionIndex > 0 ? previousQuestion : null,
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Back",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purpleAccent,
                            iconColor: Colors.black
                            //fixedSize: Size(100, 50)

                            )),

                    // ElevatedButton(
                    //   onPressed: answers[currentQuestionIndex] != null && currentQuestionIndex < questions.length - 1 ?
                    //   () => answerQuestion(answers[currentQuestionIndex] ! )
                    //   : null,
                    //   child: Text("Next"),
                    // )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
