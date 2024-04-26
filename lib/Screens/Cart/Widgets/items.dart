
import 'package:eco_vibe/Screens/Cart/Widgets/counter.dart';
import 'package:flutter/material.dart';

Widget items()=>Padding(
  padding: const EdgeInsets.all(16.0),
  child: Container(
    height: 160,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Image.asset(
            'assets/Rectangle18.png',
            scale: 3.5,
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Collection care',
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'From Name',
                style: TextStyle(color: Colors.grey,
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),

              SizedBox(
                height: 10,
              ),
               Row(
                children: [
                  Text(
                    '\$100 ',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Counter(),

                ],
              ),
            ],
          ),
        ],
      ),
    ),
  ),
);