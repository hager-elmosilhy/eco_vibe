import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
        child: Divider(
          indent: 5,
          endIndent: 10,
          color: Colors.grey,
        ),
      ),
      Text(
        "Or",
        style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),
      ),
      Expanded(
        child: Divider(
          endIndent: 5,
          indent: 10,
          color: Colors.grey,
        ),
      ),
    ]);
  }
}
