import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  const CustomButton({super.key, required this.onPressed, required this.title});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: kBottomContainerColour,
      constraints: const BoxConstraints.tightFor(width: double.infinity, height: 60),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 23, fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );
  }
}
