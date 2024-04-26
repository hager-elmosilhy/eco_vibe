import 'package:eco_vibe/Screens/BottomNav/bottomNav.dart';
import 'package:flutter/material.dart';

class profileAppBar extends StatelessWidget {
  const profileAppBar({super.key, required this.text});
final String text ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
      child: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomScreen()),
                );
              },
              icon: Image.asset(
                'assets/arrow_circle_left 2.png',
                scale: 3.5,
              )),
        ),
        title:  Center(
          child: Text(
            text,
            // 'Profile',
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/edit.png',
            scale: 4,
          ))
        ],
      ),
    );
  }
}