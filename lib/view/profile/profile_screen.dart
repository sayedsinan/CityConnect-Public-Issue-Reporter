import 'package:city_connect/controller/auth_controller.dart';
import 'package:city_connect/view/widgets/account_tab.dart';
import 'package:city_connect/view/widgets/custom_app_bar.dart';
import 'package:city_connect/view/widgets/overview_tab.dart';
import 'package:city_connect/view/widgets/preference_tab.dart';
import 'package:city_connect/view/widgets/profile_header.dart';
import 'package:city_connect/view/widgets/profile_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthController authController = Get.find<AuthController>();
  int selectedTab = 0;
  bool generalNotifications = true;
  bool resolvedAlerts = false;
  bool darkMode = false;
  @override
  void initState() {
    super.initState();
    authController.loadCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: MyAppBar(title: "City Connect"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileHeader(),
            ProfileTabBar(
              selectedTab: selectedTab,
              onTabChanged: (index) => setState(() => selectedTab = index),
            ),
            const SizedBox(height: 16),
            if (selectedTab == 0) const OverviewTab(),
            if (selectedTab == 1)
              PreferencesTab(
                generalNotifications: generalNotifications,
                resolvedAlerts: resolvedAlerts,
                darkMode: darkMode,
                onChanged: (type, value) {
                  setState(() {
                    if (type == 'general') generalNotifications = value;
                    if (type == 'resolved') resolvedAlerts = value;
                    if (type == 'dark') darkMode = value;
                  });
                },
              ),
            if (selectedTab == 2) const AccountTab(),
          ],
        ),
      ),
    );
  }
}
