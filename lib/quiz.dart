import 'package:flutter/material.dart';
import 'package:secondcourseapp/questions_screen.dart';
import 'package:secondcourseapp/start_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}


class _QuizState extends State<Quiz> {

  Widget activeScreen = const StartScreen(switchScreen);

  void switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  
  @override
  Widget build(context) {
    return MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xff673ab7),Color(0xffe91e63)],
            stops: [0, 1],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
          child: activeScreen,
          ),
    ),
  );
  }
}