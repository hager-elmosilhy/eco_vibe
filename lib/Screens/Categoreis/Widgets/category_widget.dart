import 'package:flutter/material.dart';

Widget categoryApp({image,text})=>Column(
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