import 'package:eco_vibe/Screens/Login/Widgets/AuthTextWidget.dart';
import 'package:flutter/material.dart';

class AuthTextButtonWidget extends StatelessWidget {
  final String text;
    final double size;

  const AuthTextButtonWidget({super.key, required this.text, this.color, required this.size});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        alignment: Alignment.topRight,
      ),
      child: AuthTextWidget(
          text: text,
          size: size,
          fontWeight: FontWeight.bold,
          color:  color),
    );
  }
}
