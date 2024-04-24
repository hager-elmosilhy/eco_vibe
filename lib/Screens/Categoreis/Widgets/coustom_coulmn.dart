import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoustomColumn extends StatelessWidget {
  CoustomColumn({
    super.key,
    required this.image,
    required this.text,
  });
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image,scale: 4,),
        const SizedBox(
          height: 4,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
