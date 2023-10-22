import 'package:flutter/material.dart';

class RawButtons extends StatelessWidget {
  final Icon? icons;
  final Function()? onPressed;
  const RawButtons({super.key, this.icons, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Colors.grey,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      child: icons,
    );
  }
}
