import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Coustom_Text extends StatelessWidget {
   Coustom_Text({
    super.key,
    required this.text
  });
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        //'Services'
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
