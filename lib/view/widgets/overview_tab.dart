import 'package:city_connect/view/widgets/highlite_item.dart' show HighlightItem;
import 'package:flutter/material.dart';
class OverviewTab extends StatelessWidget {
  const OverviewTab({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Highlights',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          SizedBox(height: 8),
          Text('Quick snapshot of your recent activity',
              style: TextStyle(fontSize: 14, color: Colors.grey)),
          SizedBox(height: 24),
          HighlightItem(label: 'Open Reports', value: '6'),
          SizedBox(height: 16),
          HighlightItem(label: 'Avg. Resolution', value: '3.2 days'),
          SizedBox(height: 16),
          HighlightItem(label: 'Upvotes', value: '142'),
        ],
      ),
    );
  }
}

