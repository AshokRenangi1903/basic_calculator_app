import 'package:flutter/material.dart';
import 'package:simple_calculator_app/calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Calculator',
      home: const Calculator(),
    );
  }
}
