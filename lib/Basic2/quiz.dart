import 'package:first_app/Basic2/data/questions.dart';
import 'package:first_app/Basic2/question_screen.dart';
import 'package:first_app/Basic2/results_screen.dart';
import 'package:first_app/Basic2/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchState);
  //   super.initState();
  // }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }

    if(activeScreen == 'result-screen'){
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
