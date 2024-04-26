import 'package:eco_vibe/Screens/Categoreis/Widgets/coustom_items.dart';
import 'package:eco_vibe/Screens/Categoreis/details_items.dart';
import 'package:eco_vibe/Widgets/appbar_widget.dart';
import 'package:eco_vibe/Widgets/search_widget.dart';
import 'package:flutter/material.dart';


class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEBEBEB),
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBarWidget(
                widget: Search(
                  ),),
               Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 8,
                  itemBuilder: (context, index) =>  InkWell(
                    onTap: (){ Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailsScreen()));},
                    child:  items()),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 5),),
                    
                           )
            ],
          ),
        ),
      ),
    );
  }
}

