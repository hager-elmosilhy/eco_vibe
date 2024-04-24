import 'package:eco_vibe/Screens/Login/Widgets/coustom_container.dart';
import 'package:eco_vibe/Screens/Login/sign_up.dart';
import 'package:eco_vibe/Widgets/app_name.dart';
import 'package:eco_vibe/Widgets/coustom_divider.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppNameTextWidget(
              scale: 7,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CoustomContainer(
              text: 'User',
            ),
            const SizedBox(
              height: 60,
            ),
            CoustomContainer(
              text: 'Vendor',
            ),
            const SizedBox(
              height: 60,
            ),
            const CustomDivider(),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/apple 1.png',
                  scale: 3,
                ),
                Image.asset(
                  'assets/google 1.png',
                  scale: 3,
                ),
                Image.asset(
                  'assets/facebook 1.png',
                  scale: 3,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Do you have an account?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(color: Color(0xff00994C), fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
