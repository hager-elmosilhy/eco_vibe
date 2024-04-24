import 'package:eco_vibe/Screens/BottomNav/bottomNav.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoustomAppBar extends StatelessWidget {
  CoustomAppBar({super.key, required this.widget});
  Widget widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff00994C),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomScreen()),
                          );
                        },
                        icon: Image.asset('assets/arrow_circle_left.png',scale: 3.5,)),
    const SizedBox(
    width: 90,),
                    Center(child: widget),

                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
