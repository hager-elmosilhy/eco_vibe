import 'package:eco_vibe/Screens/BottomNav/bottomNav.dart';
import 'package:eco_vibe/Screens/Login/Widgets/AuthTextFieldWidget.dart';
import 'package:eco_vibe/Screens/Login/Widgets/AuthTextWidget.dart';
import 'package:eco_vibe/Screens/Login/Widgets/auth_textButton_widget.dart';
import 'package:eco_vibe/Screens/Login/Widgets/coustom_continue.dart';
import 'package:eco_vibe/Screens/Login/sign_up.dart';
import 'package:eco_vibe/Widgets/app_name.dart';
import 'package:eco_vibe/Widgets/coustom_divider.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey formState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 40),
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  nameApp(
                    scale: 8,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Form(
                    key: formState,
                    child: const Column(children: [
                      AuthTextFieldWidget(
                        type: 'Full Name',
                        text: 'Full Name',
                        color: Color(0xffC4C4C4),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AuthTextFieldWidget(
                        type: 'Email or phone',
                        text: 'Email or phone',
                        color: Color(0xffC4C4C4),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(360, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: const Color(0xff00994C)),
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const CustomDivider(),
                  const SizedBox(
                    height: 20,
                  ),
                  CoustomContinue(
                    image: 'assets/google 1.png',
                    text: 'Continue with Google',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CoustomContinue(
                    image: 'assets/apple 1.png',
                    text: 'Continue with Apple',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AuthTextWidget(
                        text: 'Do you have an account?',
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      AuthTextButtonWidget(
                        text: 'Sign Up',
                        color: Color(0xff00994C),
                        size: 18,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SignUpScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
