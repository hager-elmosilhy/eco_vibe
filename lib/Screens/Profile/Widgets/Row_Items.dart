import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RowItems extends StatelessWidget {
  RowItems({super.key,
   required this.image, 
  required this.text,
  required this.ontap,this.color });
  String image;
  String text;
  VoidCallback ontap;
final Color? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        children: [
          Image.asset(
            image,

            //'assets/About us.png',
            scale: 3.5,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            text,
            // 'About us',
            style:  TextStyle(fontSize: 20, fontWeight: FontWeight.normal ,color:color,),
          )
        ],
      ),
    );
  }
}
