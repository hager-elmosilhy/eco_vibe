import 'package:flutter/material.dart';

Widget Search({text,})=>Padding(
  padding: const EdgeInsets.only(right: 16.0, left: 16, top: 25),
  child: Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.grey,
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.grey, fontSize: 16),
          )
        ],
      ),
    ),
  ),
);