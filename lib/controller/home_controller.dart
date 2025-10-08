import 'package:get/get.dart';

class HomeController extends GetxController {
  // Selected tab index
  var selectedTab = 0.obs;

  // Selected category index
  var selectedCategory = 0.obs;

  final List<String> categories = [
    'Roads',
    'Electricity',
    'Waste',
    'Water',
    'Others',
  ];

  void setTab(int index) => selectedTab.value = index;
  void setCategory(int index) => selectedCategory.value = index;
}
