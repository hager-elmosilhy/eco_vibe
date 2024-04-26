import 'package:eco_vibe/Screens/Profile/Notification.dart';
import 'package:eco_vibe/Screens/Profile/Widgets/Row_Items.dart';
import 'package:eco_vibe/Screens/Profile/Widgets/app_bar.dart';
import 'package:eco_vibe/Screens/Profile/Widgets/coustom_container.dart';
import 'package:eco_vibe/Screens/Profile/about.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              profileAppBar(
                text: 'Profile',
               ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'assets/profile.png',
                scale: 1.5,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Maria jon',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Mariajone33@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CoustomContainerWidget(
                widget: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Column(
                    children: [
                      RowItems(
                        image: 'assets/account.png',
                        text: 'Account',
                        ontap: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RowItems(
                        image: 'assets/notification.png',
                        text: 'Notification',
                        ontap: () {
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NotificationScreen()));
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RowItems(
                        image: 'assets/payment.png',
                        text: 'Payment',
                        ontap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CoustomContainerWidget(
                widget: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Column(
                    children: [
                      RowItems(
                        image: 'assets/Setting.png',
                        text: 'Settings',
                        ontap: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RowItems(
                        image: 'assets/Saved.png',
                        text: 'Saved', ontap: () {  },
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      //Log out
                      RowItems(
                        image: 'assets/About us.png',
                        text: 'About us',
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AboutScreen()));
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RowItems(
                        image: 'assets/Log out.png',
                        text: 'Log out', ontap: () {  },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Image.asset('assets/edit.png',scale: 4,)
