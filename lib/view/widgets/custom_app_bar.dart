import 'package:city_connect/view/style/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart'; 

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: whiteColor,
      leadingWidth: 80, 
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Image.asset(
          'assets/logo.png',
          fit: BoxFit.contain,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: blackColor, fontSize: 20),
      ),
      actions: [
        // Notification Icon from Feather
        IconButton(
          icon: Icon(Feather.bell, color: blackColor),
          onPressed: () {
            // TODO: handle notification tap
          },
        ),
        SizedBox(width: 5),
        // Profile Icon from Ionicons
        IconButton(
          icon: Icon(Ionicons.md_person_outline, color: blackColor),
          onPressed: () {
            // TODO: handle profile tap
          },
        ),
        SizedBox(width: 16),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
