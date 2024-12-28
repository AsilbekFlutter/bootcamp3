import 'package:bootcamp3/hometasks/task1/fitness_screen.dart';
import 'package:bootcamp3/hometasks/task2/r_screen.dart';
import 'package:bootcamp3/hometasks/task3/calculator_page.dart';
import 'package:bootcamp3/screen/appbar.dart';
import 'package:bootcamp3/screen/gesture_detector.dart';
import 'package:bootcamp3/screen/home_screen.dart';
import 'package:bootcamp3/screen/task_screen.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorApp(),
    );
  }
}