import 'package:eco_vibe/Screens/Cart/Widgets/items.dart';
import 'package:eco_vibe/Widgets/coustom_app_bar.dart';
import 'package:eco_vibe/Widgets/coustom_text.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEBEBEB),
        body: Column(
          children: [
            coustomAppBar(text: 'Cart'),
             items(),
            items(),

            Coustom_Text(text: 'Order Summary'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff00994C).withOpacity(0.2)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sub total',style: TextStyle(
                            fontSize: 16
                          ),),
                          Text('\$173',style: TextStyle(
                              fontSize: 16
                          ),)

                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text('Delivery',style: TextStyle(
                              fontSize: 16
                          ),),
                          Text('\$3',style: TextStyle(
                              fontSize: 16
                          ),)
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Coustom_Text(text: 'Order Summary'),
                          const Text('\$176',style: TextStyle(
                              fontSize: 16
                          ),)

                        ],
                      ),

                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

