import 'package:flutter/material.dart';

class AuthTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double size;
  final FontWeight fontWeight;
  const AuthTextWidget({
    super.key,
    required this.text,
    this.color,
    required this.size, required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
