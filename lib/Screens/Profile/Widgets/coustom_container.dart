import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoustomContainerWidget extends StatelessWidget {
  CoustomContainerWidget({super.key, required this.widget,});
  Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: IntrinsicHeight(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff00994C), width: 2),
              borderRadius: BorderRadius.circular(20)),
          child: widget,
        ),
      ),
    );
  }
}
