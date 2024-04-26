
import 'package:flutter/material.dart';

import '../Screens/Search/Search.dart';
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16, top: 25),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          decoration: InputDecoration(
              fillColor: Colors.white,
              hoverColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              hintText: 'Search',
              hintStyle: const TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const SearchScreen()));
                },
                icon: Icon(Icons.search),
                color: Colors.green,
              ),
              filled: true,
              focusColor: Colors.green),
        ),
      ),
    );
  }
}
