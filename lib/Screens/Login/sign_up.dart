import 'package:eco_vibe/Screens/Login/Widgets/AuthTextWidget.dart';
import 'package:eco_vibe/Screens/Login/Widgets/auth_textButton_widget.dart';
import 'package:eco_vibe/Screens/Login/Widgets/coustom_continue.dart';
import 'package:eco_vibe/Screens/Login/login.dart';
import 'package:eco_vibe/Widgets/app_name.dart';
import 'package:eco_vibe/Widgets/coustom_divider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var formkey = GlobalKey<FormState>();
  bool visible = true;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

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
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Form(
                    key: formkey,
                    child: Column(children: [
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email not be empty";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelStyle: const TextStyle(
                            fontSize: 16,
                          ),
                          hintText: 'Full Name',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password not be empty";
                          }
                          return null;
                        },
                        obscureText: visible,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelStyle: const TextStyle(
                            fontSize: 16,
                          ),
                          hintText: 'password',
                          filled: true,

                          fillColor: Colors.white,
                          //focusColor:const Color(0xff00994C),
                          // hoverColor: const Color(0xff00994C),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            //borderSide: BorderSide.none
                          ),
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {

                      if (formkey.currentState!.validate()) {

                      }
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text)
                          .then((value) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) =>const LoginScreen()));

                      });
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
                      const AuthTextWidget(
                        text: 'Do you have an account?',
                        size: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      AuthTextButtonWidget(
                        text: 'Log In',
                        color: const Color(0xff00994C),
                        size: 18,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const LoginScreen(),
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
