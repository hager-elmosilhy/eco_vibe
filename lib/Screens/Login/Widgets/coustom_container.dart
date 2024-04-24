import 'package:eco_vibe/Screens/Login/sign_up.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoustomContainer extends StatelessWidget {
  CoustomContainer({super.key, required this.text});
  late String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const SignUpScreen(),
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: const Color(0xff00994C),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                  spreadRadius: 2)
            ]),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 32,
               fontWeight: FontWeight.bold,
                color: Colors.white),
        ),
      ),
    );
  }
}
