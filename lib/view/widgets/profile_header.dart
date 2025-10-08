import 'package:city_connect/view/style/color.dart';
import 'package:city_connect/view/widgets/custom_button.dart';
import 'package:city_connect/view/widgets/stat_card.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey[300],
                child: Icon(Icons.person, size: 40, color: Colors.grey[600]),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Jane Doe',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'jane@example.com',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 14,
                          color: Colors.grey[500],
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'San Francisco, CA',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 12),
              Expanded(
                child: CustomButton(
                  text: "Edit Profile",
                  onPressed: () {},
                  backgroundColor: blackColor,
                  textColor: whiteColor,
                  height: 48,
                  width: 50,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: const [
              Expanded(
                child: StatCard(label: 'Reports', value: '24'),
              ),
              SizedBox(width: 12),
              Expanded(
                child: StatCard(label: 'Resolved', value: '18'),
              ),
              SizedBox(width: 12),
              Expanded(
                child: StatCard(label: 'Reputation', value: 'Top 10%'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
