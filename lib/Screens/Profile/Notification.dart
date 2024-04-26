import 'package:eco_vibe/Screens/Profile/Widgets/items_notifications.dart';
import 'package:eco_vibe/Widgets/coustom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              coustomAppBar(
                 text:
                'Notification',

              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context, index) => const ItremsNotofication(),
                  separatorBuilder: (context, index) => const Divider(
                    indent: 16,
                    endIndent: 16,
                  ),
                  itemCount: 6)
            ],
          ),
        ),
      ),
    );
  }
}

