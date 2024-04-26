import 'package:flutter/material.dart';

Widget FristContainer()=>Padding(
  padding: const EdgeInsets.all(16.0),
  child: Container(
    height: 130,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Image.asset(
            'assets/planet.png',
            scale: 4,
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Reduce,Reuse,Recycle',
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Make a community to Reduce waste ,Reduce \nitems when possible, Recycle to minimize \nyour ecological footprint.',
                style: TextStyle(
                    fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
);