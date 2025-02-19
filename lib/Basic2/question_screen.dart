import 'package:first_app/Basic2/answer_button.dart';
import 'package:first_app/Basic2/data/questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
        child: Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map((ans) {
            return AnswerButton(
              answerText: ans,
              onTap: () {
                answerQuestion(ans);
              },
            );
          })
        ],
      ),
    ));
  }
}
