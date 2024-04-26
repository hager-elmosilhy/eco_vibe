import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget nameApp({required double scale})=>Shimmer.fromColors(
    period: const Duration(seconds: 5),
    highlightColor: Colors.white,
    baseColor: const Color(0xff00994C),
    child: Image.asset(
      'assets/Eco-Vibe.png',
      scale: scale,
    ));