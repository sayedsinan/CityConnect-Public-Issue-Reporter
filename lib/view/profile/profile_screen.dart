import 'package:city_connect/view/style/color.dart';
import 'package:city_connect/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: whiteColor,
      appBar: MyAppBar(title: "City Connect"),
    );
  }
}