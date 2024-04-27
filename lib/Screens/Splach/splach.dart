import 'dart:async';

import 'package:eco_vibe/Widgets/app_name.dart';
import 'package:eco_vibe/Screens/Splach/Widget/background.dart';
import 'package:flutter/material.dart';

import '../Login/register.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  _startDelay(){
    _timer= Timer(const Duration(seconds:10), _goNext);
  }

  _goNext(){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) =>const Center(child:  RegisterScreen())),);  }

  @override
  void initState(){
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const Color(0xff00994C),
      body:      nameApp(scale: 4,),
    );
  }
  @override
  void dispose(){
    _timer?.cancel();
    super.dispose();
  }
}
