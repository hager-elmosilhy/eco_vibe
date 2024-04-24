import 'package:eco_vibe/Screens/Community/Challenges.dart';
import 'package:eco_vibe/Screens/Community/posts.dart';
import 'package:eco_vibe/Screens/Search/Search.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Eco-Friendlily Community',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchScreen()),
                    );
                  },
                  icon: Image.asset(
                    'assets/data_loss_prevention.png',
                    scale: 3.5,
                  )),
            ],
            bottom: const TabBar(
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              tabs: [
                Tab(
                  text: 'Posts',
                ),
                Tab(
                  text: 'Challenges',
                )
              ],
              labelColor: Color(0xff00994C),
              indicatorColor: Color(0xff00994C),
              unselectedLabelColor: Colors.grey,
              splashBorderRadius: BorderRadius.all(Radius.circular(40)),
            ),
          ),
          body: const TabBarView(
            children: [
              PostScreen(),
              ChallengesScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
