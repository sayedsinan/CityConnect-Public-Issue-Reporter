import 'package:city_connect/controller/navigation_controller.dart';
import 'package:city_connect/view/home/home_screen.dart';
import 'package:city_connect/view/report/my_reports_screen.dart';
import 'package:city_connect/view/report/report_issue_screen.dart';
import 'package:city_connect/view/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavigationController navController = Get.find<NavigationController>();

    final List<Widget> screens = [
      HomeScreen(),
      const ReportIssueScreen(),
      const MyReportsScreen()
    ];

    return Obx(() => Scaffold(
          body: screens[navController.currentIndex.value],
          bottomNavigationBar: const CustomBottomNavBar(),
        ));
  }
}