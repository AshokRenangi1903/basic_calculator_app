import 'package:flutter/material.dart';
import 'package:simple_calculator_app/calculator.dart';
import 'package:simple_calculator_app/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Calculator',
      home: const Splashscreen(),
    );
  }
}
