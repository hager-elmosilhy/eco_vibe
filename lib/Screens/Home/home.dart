import 'package:eco_vibe/Screens/Home/Widgets/AppBar.dart';
import 'package:eco_vibe/Screens/Home/Widgets/Item_List.dart';
import 'package:eco_vibe/Widgets/coustom_text.dart';
import 'package:eco_vibe/Screens/Home/Widgets/first_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffEBEBEB),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarWidget(),
            const SizedBox(
              height: 15,
            ),
            Coustom_Text(
              text: 'Be Part of the change',
            ),
            FristContainer(),
            Coustom_Text(
              text: 'Services',
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemList(),
                  ItemList(),
                  ItemList(),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Coustom_Text(
              text: 'Special Offers',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset(
                    'assets/Rectangle 44.png',
                    scale: 3.5,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/Rectangle 45.png',
                    scale: 3.5,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/Rectangle 44.png',
                    scale: 3.5,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/Rectangle 45.png',
                    scale: 3.5,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/Rectangle 44.png',
                    scale: 3.5,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/Rectangle 45.png',
                    scale: 3.5,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/Rectangle 44.png',
                    scale: 3.5,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/Rectangle 45.png',
                    scale: 3.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
