import 'package:flutter/material.dart';

class ItremsNotofication extends StatelessWidget {
  const ItremsNotofication({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: IntrinsicHeight(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Image.asset(
                    'assets/order1.png',
                    scale: 4,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Order Successful',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          Container(
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xff00994C),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                                child: Text(
                              'New',
                              style: TextStyle(color: Colors.white),
                            )),
                          )
                        ],
                      ),
                      const Text(
                        '18June 2023 |20:50 PM',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                          "You placed an order and Paid50\$. \nyour order will arrive soon.",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
