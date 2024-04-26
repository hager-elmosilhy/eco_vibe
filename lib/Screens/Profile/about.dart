import 'package:eco_vibe/Screens/Profile/Widgets/Row_Items.dart';
import 'package:eco_vibe/Screens/Profile/Widgets/app_bar.dart';
import 'package:eco_vibe/Widgets/app_name.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
                icon: Image.asset(
                  'assets/arrow_circle_left 2.png',
                  scale: 3.5,
                )),
          ),
          title: const Center(
            child: Text(
              'About Us',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              Center(
                child: nameApp(
                  scale: 6.5,
                ),
              ),
              const SizedBox(height: 25,),
              const Text(
                "Creating a sustainable eCommerce website involves various strategies to minimize environmental impact Firstly, opt for green hosting services  that use renewable energy sources.Secondly, focus on efficient web design by using clean, lightweight code and optimizing images. Thirdly, offer eco-friendly products  and encourage minimal packaging. Additionally, consider implementing a carbon offsetting program and providing educational content on sustainability. Collaborating with sustainable brands can also enhance your website's eco-friendly appeal and attract environmentally conscious consumers.",
                maxLines: 15,style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 30,),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff00994C),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  RowItems(image: 'assets/call.png', text: 'Contact Us',color: Colors.white, ontap: () {  },),
                ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
