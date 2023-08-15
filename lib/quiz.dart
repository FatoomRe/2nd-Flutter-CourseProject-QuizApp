import 'package:flutter/material.dart';
import 'package:secondcourseapp/data/questions.dart';
import 'package:secondcourseapp/questions_screen.dart';
import 'package:secondcourseapp/start_screen.dart';
import 'package:secondcourseapp/results_screen.dart';

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

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false, //this will remove debug banner
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xff673ab7), Color(0xffe91e63)],
            stops: [0, 1],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
          child: screenWidget,
        ),
      ),
    );
  }
}
