import 'package:eco_vibe/Widgets/appbar_widget.dart';
import 'package:eco_vibe/Widgets/search_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBarWidget(
              widget: Search(
                text: 'Fast coffee',
              ),
            ),
            Image.asset('assets/Not found.png'),
            const Text(
              'Not Found',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Sorry ,the keyword you entered cannot be found.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const Text(
              'Please check again or search with another keyword.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
