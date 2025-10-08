import 'package:flutter/material.dart';
class PreferencesTab extends StatelessWidget {
  final bool generalNotifications;
  final bool resolvedAlerts;
  final bool darkMode;
  final Function(String, bool) onChanged;

  const PreferencesTab({
    super.key,
    required this.generalNotifications,
    required this.resolvedAlerts,
    required this.darkMode,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return _buildCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Preferences',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          const SizedBox(height: 8),
          const Text('Control notifications and appearance',
              style: TextStyle(fontSize: 14, color: Colors.grey)),
          const SizedBox(height: 24),
          _buildSwitch(
            title: 'General Notifications',
            subtitle: 'Project updates and activity',
            value: generalNotifications,
            onChanged: (v) => onChanged('general', v),
          ),
          const SizedBox(height: 24),
          _buildSwitch(
            title: 'Resolved Report Alerts',
            subtitle: 'Get notified when a report is resolved',
            value: resolvedAlerts,
            onChanged: (v) => onChanged('resolved', v),
          ),
          const SizedBox(height: 24),
          _buildSwitch(
            title: 'Dark Mode',
            subtitle: 'Switch theme appearance',
            value: darkMode,
            onChanged: (v) => onChanged('dark', v),
          ),
        ],
      ),
    );
  }

  Widget _buildCard({required Widget child}) => Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 2)),
          ],
        ),
        child: child,
      );

  Widget _buildSwitch({
    required String title,
    required String subtitle,
    required bool value,
    required Function(bool) onChanged,
  }) {
    return Row(
      children: [
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black)),
            const SizedBox(height: 4),
            Text(subtitle, style: const TextStyle(fontSize: 13, color: Colors.grey)),
          ]),
        ),
        Switch(value: value, onChanged: onChanged, activeColor: Colors.black),
      ],
    );
  }
}
