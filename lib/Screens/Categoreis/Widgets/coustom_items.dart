import 'package:flutter/material.dart';

Widget items()=> Row(
children: [
IntrinsicHeight(
child: Container(
width: 190,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20),
),
child:Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const SizedBox(height: 5,),
Center(
child: Image.asset('assets/collection_care.png',
scale: 4,),
),
const SizedBox(height: 10,),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text('Collection Care\n\$70',style: TextStyle(
fontWeight: FontWeight.bold
),),
const SizedBox(
width: 5,
),
Container(
height: 30,
width: 50,
decoration: BoxDecoration(
color: const Color(0xff00994C),
borderRadius: BorderRadius.circular(5),
),
child: const Center(
child: Text(
'Buy Now',
style: TextStyle(fontSize: 10,color: Colors.white),
)),
)
],
),

],
) ,
),
),
],
);