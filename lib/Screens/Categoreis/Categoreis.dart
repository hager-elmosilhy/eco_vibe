import 'package:eco_vibe/Screens/Categoreis/Widgets/category_widget.dart';
import 'package:eco_vibe/Screens/Categoreis/items.dart';
import 'package:eco_vibe/Widgets/coustom_app_bar.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEBEBEB),
        body: Column(
          children: [
            coustomAppBar(
              text: 'Categoreis'
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                categoryApp(
                  text: 'Furniture',
                  image: 'assets/Furniture.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                categoryApp(
                  text: 'Clothes',
                  image: 'assets/Clothes.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ItemsScreen()),
                    );
                  },
                  child: categoryApp(
                    text: 'Self Care',
                    image: 'assets/Self Care.png',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                categoryApp(
                  text: 'Gifts',
                  image: 'assets/Gifts.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                categoryApp(
                  text: 'Food',
                  image: 'assets/Food.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                categoryApp(
                  text: 'Paper tools',
                  image: 'assets/Paper tools.png',
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                categoryApp(
                  text: 'Recycable',
                  image: 'assets/Recycable.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                categoryApp(
                  text: 'Education',
                  image: 'assets/Education.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                categoryApp(
                  text: 'Health',
                  image: 'assets/Health.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
