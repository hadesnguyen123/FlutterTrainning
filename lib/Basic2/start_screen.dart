import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(150,255,255,255),
          ),
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 60),
          Text(
            'Learning FLutter the fun way',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 237, 223, 252),
              fontSize: 24
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          OutlinedButton.icon(
              //icon argument
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              label: const Text('Start Quizz'),
              icon: Icon(Icons.arrow_right_alt)),
        ],
      ),
    );
  }
}
