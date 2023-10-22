import 'package:bmi_calculator/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0xff0a0e21),
          scaffoldBackgroundColor: const Color(0xff0a0e21)),
      home: const HomeScreen(),
    );
  }
}
