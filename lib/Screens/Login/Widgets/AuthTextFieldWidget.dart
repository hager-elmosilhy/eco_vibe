import 'package:flutter/material.dart';

class AuthTextFieldWidget extends StatelessWidget {
  final String text, type;
    final Color? color;

  const AuthTextFieldWidget(
      {super.key, required this.text,  required this.type, this.color});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (val) {
        if (val!.isEmpty) {
          return 'Not Valid $type';
        }
        return null;
      },
      decoration: InputDecoration(
        labelStyle:  const TextStyle(
          fontSize: 16,
        ),
        hintText: text,
        filled: true,
        
       fillColor:  Colors.white,
       //focusColor:const Color(0xff00994C),
       // hoverColor: const Color(0xff00994C),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          //borderSide: BorderSide.none
        ),
      ),
    );
  }
}