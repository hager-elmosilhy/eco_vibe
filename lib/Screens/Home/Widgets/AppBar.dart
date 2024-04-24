import 'package:eco_vibe/Screens/Search/Search.dart';
import 'package:eco_vibe/Widgets/search_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 181,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff00994C),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 16, right: 16),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hello ,Maria',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Let’s move towards sustainability',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Image.asset(
                    'assets/notifications.png',
                    scale: 3,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/profile.png',
                    scale: 3,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchScreen()));
              },
              child: SearchWidget(
                text: 'Search for services',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
