import 'package:flutter/material.dart';

class coustomAppBar extends StatelessWidget {
  const coustomAppBar({super.key, required this.text});

  final String text ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff00994C),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(
                              context);

                        },
                        icon: Image.asset('assets/arrow_circle_left.png',scale: 3.5,)),
                    const SizedBox(
                      width: 90,),
                    Center(child: Text(
                      text,
                      //'Categoreis',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),),

                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

