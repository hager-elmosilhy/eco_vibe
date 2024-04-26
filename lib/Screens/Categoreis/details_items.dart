import 'package:eco_vibe/Screens/Cart/cart.dart';
import 'package:eco_vibe/Screens/Categoreis/Widgets/details_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
             appbarDetails(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.asset(
                    'assets/collection_care.png',
                    scale: 1.5,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Collection Care',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Rate(
                        iconSize: 25,
                        color: Colors.orange,
                        allowHalf: true,
                        allowClear: true,
                        initialValue: 4,
                        readOnly: true,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Collection care: typically refers to the management and preservation of collections, often in a museum, library, or archive setting. ',
                    maxLines: 10,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      const Text(
                        '\$70',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(
                        width: 160,
                      ),
                      InkWell(
                        onTap: (){ Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartScreen()));},
                        child: Container(
                          height: 40,
                          width: 170,
                          decoration: BoxDecoration(
                              color: const Color(0xff00994C),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              'Add Cart',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
