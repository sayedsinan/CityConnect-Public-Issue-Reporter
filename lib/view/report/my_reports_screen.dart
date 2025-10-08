import 'package:city_connect/view/report/detailed_issue_page.dart';
import 'package:city_connect/view/style/color.dart';
import 'package:city_connect/view/widgets/custom_app_bar.dart';
import 'package:city_connect/view/widgets/issue_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyReportsScreen extends StatelessWidget {
  const MyReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final reports = [
      {
        'title': 'Pothole on 3rd Ave',
        'category': 'Roads',
        'updatedTime': '2h ago',
        'status': 'Pending',
      },
      {
        'title': 'Streetlight not working',
        'category': 'Electricity',
        'updatedTime': '5h ago',
        'status': 'Resolved',
      },
      {
        'title': 'Overflowing trash bin',
        'category': 'Waste',
        'updatedTime': '1d ago',
        'status': 'Pending',
      },
    ];

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: const MyAppBar(title: "City Connect"),
      body: ListView.builder(
        itemCount: reports.length,
        itemBuilder: (context, index) {
          final report = reports[index];
          return GestureDetector(
            onTap: () {
              Get.to(() => IssueDetailScreen());
            },
            child: IssueCard(
              title: report['title']!,
              category: report['category']!,
              updatedTime: report['updatedTime']!,
              status: report['status']!,
            ),
          );
        },
      ),
    );
  }
}
