import 'package:flutter/material.dart';

class CoustomContainer extends StatelessWidget {
  const CoustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: IntrinsicHeight(
        child: Container(
          height: 225,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/Ellipse 16.png',
                      scale: 3.5,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jana Davide',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2h ago',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Text(
                'Hey sustainable live community, im so exited to \nshare my small change i have made, I have been \nfocusing on reduce my plastic waste❤❤❤.',
                style:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 10,),
              Image.asset('assets/favo.png',scale: 4,)
            ],
          ),
        ),
      ),
    );
  }
}