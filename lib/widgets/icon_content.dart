import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String title;
  const IconContent({super.key, required this.iconData, required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, 
    children: [
      Icon(
        iconData,
        size: 76,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        title,
        style: const TextStyle(fontSize: 20, color: Colors.grey),
      )
    ]);
  }
}
