import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoustomContinue extends StatelessWidget {
   CoustomContinue({
    super.key,
    required this.image,
    required this.text
  });
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
           // 'assets/google 1.png',
            scale: 6,
          ),
          const SizedBox(
            width: 15,
          ),
           Text(
            text
           // 'Continue with Google'
            , style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
