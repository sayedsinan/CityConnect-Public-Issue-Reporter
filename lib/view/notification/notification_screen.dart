import 'package:city_connect/view/widgets/custom_app_bar.dart';
import 'package:city_connect/view/widgets/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:city_connect/view/style/color.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        'title': 'Road Repair Completed',
        'message': 'The pothole you reported on 3rd Ave has been fixed.',
        'time': '2h ago',
      },
      {
        'title': 'New Garbage Collection Schedule',
        'message': 'Garbage will now be collected every Monday and Thursday.',
        'time': '1d ago',
      },
      {
        'title': 'Streetlight Issue Reported',
        'message': 'A new report was created near Green Park.',
        'time': '3d ago',
      },
    ];

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: const MyAppBar(title: "City Connect"),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final item = notifications[index];
          return NotificationCard(
            title: item['title']!,
            message: item['message']!,
            time: item['time']!,
          );
        },
      ),
    );
  }
}
