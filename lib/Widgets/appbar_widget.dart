
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key, required this.widget});
  Widget widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 170,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff00994C),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: const EdgeInsets.only(left: 10.0,),
                child: Column(

                  children: [

                    IconButton(
                        onPressed: () {
                          Navigator.pop(
                            context);
                        },
                        icon: Image.asset('assets/arrow_circle_left.png',scale: 3.5,)),

                  ],
                ),
              ),
              const SizedBox(
                height: 5,),
              Center(child: widget),

            ],
          ),
        ),
      ],
    );
  }
}