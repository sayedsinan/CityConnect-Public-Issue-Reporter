import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:city_connect/controller/navigation_controller.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navController = Get.find<NavigationController>();

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => navController.changePage(0),
                  child: Icon(
                    Icons.map_outlined,
                    size: 28,
                    color: navController.currentIndex.value == 0
                        ? Colors.black
                        : Colors.grey[400],
                  ),
                ),
                GestureDetector(
                  onTap: () => navController.changePage(1),
                  child: Icon(
                    Icons.add_circle_outline,
                    size: 28,
                    color: navController.currentIndex.value == 1
                        ? Colors.black
                        : Colors.grey[400],
                  ),
                ),
                GestureDetector(
                  onTap: () => navController.changePage(2),
                  child: Icon(
                    Icons.tune,
                    size: 28,
                    color: navController.currentIndex.value == 2
                        ? Colors.black
                        : Colors.grey[400],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}