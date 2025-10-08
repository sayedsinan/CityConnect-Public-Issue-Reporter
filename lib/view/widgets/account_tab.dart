import 'package:city_connect/view/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
class AccountTab extends StatelessWidget {
  const AccountTab({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black)),
          SizedBox(height: 8),
          Text('Manage your personal information',
              style: TextStyle(fontSize: 14, color: Colors.grey)),
          SizedBox(height: 24),
          _Field(label: 'Full name', hint: 'Sinan Jifry'),
          SizedBox(height: 20),
          _Field(label: 'Email', hint: 'sinan@gmail.com'),
          SizedBox(height: 20),
          _Field(label: 'Location', hint: 'Kozhikode, India'),
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
}

class _Field extends StatelessWidget {
  final String label;
  final String hint;

  const _Field({required this.label, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black)),
      const SizedBox(height: 8),
      CustomInputField(
        hintText: hint,
        controller: TextEditingController(),
        isPassword: false,
        maxLine: 1,
      ),
    ]);
  }
}
