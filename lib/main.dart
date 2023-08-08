import 'package:flutter/material.dart';
import 'package:secondcourseapp/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xffb31148), Color(0xff1e2757)],
          stops: [0, 1],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
          child: const StartScreen()),
    ),
  ));
}
