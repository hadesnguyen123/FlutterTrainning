import 'package:first_app/Basic2/questions_summary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> get summaryData{    //thay thế getSummaryDate bằng get summaryData khi ko cần tham số với getter
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        //assume that first answer always right
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where(
          (data) => data['user_answer'] == data['correct_answer'],
        )
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 200, 253),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionSummary(summaryData: summaryData),
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed: onRestart,
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  color: const Color.fromARGB(255, 230, 200, 253),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
