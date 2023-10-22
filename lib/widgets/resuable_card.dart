import 'package:flutter/material.dart';
import '../constants.dart';

class ResuableCard extends StatelessWidget {
  final Widget? child;
  final bool? selected;
  final void Function()? onPressed;
  const ResuableCard({super.key, this.child, this.selected, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: selected == true ? kActiveCardColour : kInactiveCardColour),
        child: child,
      ),
    );
  }
}
