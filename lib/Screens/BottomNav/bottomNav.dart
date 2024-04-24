import 'package:eco_vibe/Screens/Categoreis/Categoreis.dart';
import 'package:eco_vibe/Screens/Community/Community.dart';
import 'package:eco_vibe/Screens/Home/home.dart';
import 'package:eco_vibe/Screens/Profile/profile.dart';
import 'package:flutter/material.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const CategoryScreen(),
    const CommunityScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedIconTheme: const IconThemeData(color: Color(0xff00994C) ),
          //showSelectedLabels: true,
          selectedItemColor: const Color(0xff00994C),
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/home.png',
                  scale: 4,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/add_shopping_cart.png',
                  scale: 4,
                ),
                label: 'Category'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/Community.png',
                  scale: 4,
                ),
                label: 'Community'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/person.png',
                  scale: 4,
                ),
                label: 'Profile'),
          ]),
      body: screens[currentIndex],
    );
  }
}
