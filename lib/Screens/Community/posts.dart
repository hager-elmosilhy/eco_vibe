import 'package:eco_vibe/Screens/Community/Widgets/coustom_container.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffEBEBEB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CoustomContainer(),
            CoustomContainer(),
            CoustomContainer(),
            CoustomContainer(),
            CoustomContainer(),
          ],
        ),
      ),
    );
  }
}
