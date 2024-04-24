import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

// ignore: must_be_immutable
class AppNameTextWidget extends StatelessWidget {
   AppNameTextWidget({
    super.key, required this.scale
  });
  double scale;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        period: const Duration(seconds: 5),
        highlightColor: Colors.white,
        baseColor: const Color(0xff00994C),
        child: Image.asset(
          'assets/Eco-Vibe.png',
          scale: scale,
        ));
  }
}
