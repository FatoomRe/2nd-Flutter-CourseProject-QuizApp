import 'package:flutter/material.dart';
import 'package:secondcourseapp/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff673ab7), Color(0xffe91e63)],
          stops: [0, 1],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        )
      ),
          child: const StartScreen()),
    ),
  ));
}
