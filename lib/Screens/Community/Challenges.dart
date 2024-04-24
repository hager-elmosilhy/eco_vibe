import 'package:eco_vibe/Screens/Community/Widgets/CoustomChallenge.dart';
import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffEBEBEB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CoustomChallenge(),
            CoustomChallenge(),
            CoustomChallenge(),
            CoustomChallenge(),
            CoustomChallenge(),
          ],
        ),
      ),
    );
  }
}
