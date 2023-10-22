import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/resuable_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  const ResultScreen({super.key, required this.result});

  String? bmi() {
    if (result >= 0 && result <= 18) {
      return 'Yor\'re  Underweight ';
    } else if (result > 19 && result <= 25) {
      return ' Yor\'re in shape (Normal or Healthy Weight)  ';
    } else if (result > 26 && result <= 29) {
      return 'Yor\'re  Overweight ';
    } else {
      return 'Obase  ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kActiveCardColour,
          title: const Center(child: Text('BMI Calculator')),
          centerTitle: false,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Text(
                  'Your Result ',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ResuableCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    // ignore: unnecessary_string_interpolations
                    '${result.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w400),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Text(
                    '${bmi()}',
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w400),
                  ))
                ],
              ),
            )),
            CustomButton(
                onPressed: () => Navigator.pop(context), title: 'RE-CALCULATE')
          ],
        ));
  }
}
