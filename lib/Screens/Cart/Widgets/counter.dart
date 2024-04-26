import 'package:flutter/material.dart';
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 30,
          decoration:  BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(5),),
          child: IconButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            icon: const Icon(Icons.add),
            color: Colors.white,
            iconSize: 16,
          ),
        ),
        const SizedBox(width: 5,),
        Center(
          child: Text(
            "$counter",
            style: const TextStyle(fontSize: 20, color: Colors.green),
          ),
        ),
        const SizedBox(width: 5,),

        Container(
          height: 40,
          width: 30,
          alignment: Alignment.topCenter,
          decoration:  BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(5),

          ),
          child: Center(
            child: IconButton(
              alignment: Alignment.center,
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              icon: const Icon(Icons.remove),
              color: Colors.white,
              iconSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
