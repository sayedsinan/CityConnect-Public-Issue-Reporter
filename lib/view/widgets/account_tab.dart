import 'package:city_connect/controller/auth_controller.dart';
import 'package:city_connect/view/style/color.dart';
import 'package:city_connect/view/widgets/custom_button.dart';
import 'package:city_connect/view/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountTab extends StatelessWidget {
  const AccountTab({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find<AuthController>();

    return Obx(() {
      final user = authController.currentUser.value;

      if (user == null) {
        return const Center(child: Text("Something went wrong"));
      }

      return _buildCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Manage your personal information',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // Name Field (display only for now)
            _Field(
              label: 'Full Name',
              hint: user.name,
              controller: TextEditingController(text: user.name),
            ),
            const SizedBox(height: 20),

            // Email Field
            _Field(
              label: 'Email',
              hint: user.email,
              controller: TextEditingController(text: user.email),
            ),
            const SizedBox(height: 20),

            // Location Field (You can make this editable later)
            _Field(
              label: 'Location',
              hint: 'Kozhikode, India',
              controller: TextEditingController(),
            ),
            const SizedBox(height: 20),

            // Logout Button
            CustomButton(
              text: "Logout",
              onPressed: () => authController.logout(),
              backgroundColor: Colors.red,
              textColor: whiteColor,
              height: 48,
              width: double.infinity,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: "Delete Account",
              onPressed: () {
                Get.defaultDialog(
                  title: "Confirm Delete",
                  middleText:
                      "Are you sure you want to delete your account? This action cannot be undone.",
                  textCancel: "Cancel",
                  textConfirm: "Delete",
                  confirmTextColor: Colors.white,
                  onConfirm: () {
                    authController.deleteAccount();
                    Get.back();
                  },
                  onCancel: () {},
                );
              },
              backgroundColor: Colors.red,
              textColor: whiteColor,
              height: 48,
              width: double.infinity,
            ),
          ],
        ),
      );
    });
  }

  Widget _buildCard({required Widget child}) => Container(
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
    child: child,
  );
}

class _Field extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;

  const _Field({
    required this.label,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        CustomInputField(
          hintText: hint,
          controller: controller,
          isPassword: false,
          maxLine: 1,
        ),
      ],
    );
  }
}
