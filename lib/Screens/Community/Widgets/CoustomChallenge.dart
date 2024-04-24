import 'package:flutter/material.dart';

class CoustomChallenge extends StatelessWidget {
  const CoustomChallenge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(16),
          child: IntrinsicHeight(
            child: Container(
    height: 506,
    width: double.infinity,
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Challenge: Green Community Week',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Sustainable transportation aims to reduce environmental \nimpact by promoting modes of travel that are energy-efficient \nand environmentally friendly, such as walking, cycling, and \npublic transportation.',
            style:
                TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 10,),
      
          Center(child: Image.asset('assets/Group 43.png',scale: 4,)),
      
                        const SizedBox(height: 10,),
      
          Center(child: Image.asset('assets/favo.png',scale: 4,))
        ],
      ),
    ),
            ),
          ),
        );
  }
}
