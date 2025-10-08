import 'package:get/get.dart';

class HomeController extends GetxController {

  var selectedTab = 0.obs;


  var selectedCategory = 0.obs;

  final List<String> categories = [
    "All",
    'Roads',
    'Electricity',
    'Waste',
    'Water',
    'Others',
  ];

  void setTab(int index) => selectedTab.value = index;
  void setCategory(int index) => selectedCategory.value = index;
}
