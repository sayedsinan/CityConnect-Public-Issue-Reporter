import 'package:city_connect/controller/home_controller.dart';
import 'package:city_connect/controller/navigation_controller.dart';
import 'package:city_connect/view/widgets/category_button.dart';
import 'package:city_connect/view/widgets/custom_app_bar.dart';
import 'package:city_connect/view/widgets/tab_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: const MyAppBar(title: 'CityConnect'),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Obx(
                () => Row(
                  children: [
                    Expanded(
                      child: TabButton(
                        title: 'Map',
                        isSelected: controller.selectedTab.value == 0,
                        onTap: () => controller.setTab(0),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TabButton(
                        title: 'My Reports',
                        isSelected: controller.selectedTab.value == 1,
                        onTap: () => controller.setTab(1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1524661135-423995f22d0b?w=800&h=600&fit=crop',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Obx(
              () => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: List.generate(controller.categories.length, (index) {
                    final isSelected = controller.selectedCategory.value == index;
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: CategoryButton(
                        title: controller.categories[index],
                        isSelected: isSelected,
                        onTap: () => controller.setCategory(index),
                      ),
                    );
                  }),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 16),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () => Get.find<NavigationController>().changePage(1),
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 28),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}