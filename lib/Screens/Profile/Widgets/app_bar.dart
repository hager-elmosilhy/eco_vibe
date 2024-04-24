import 'package:eco_vibe/Screens/BottomNav/bottomNav.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarProfle extends StatelessWidget {
  AppBarProfle({
    super.key,
  });
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
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
