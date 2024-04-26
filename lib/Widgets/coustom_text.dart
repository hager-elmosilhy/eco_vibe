import 'package:flutter/material.dart';

  Widget Coustom_Text({text})=>Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Text(
      //'Services'
      text,
      style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold),
    ),
  );