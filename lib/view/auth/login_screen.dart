import 'package:city_connect/view/auth/sign_up_screen.dart';
import 'package:city_connect/view/style/color.dart';
import 'package:city_connect/view/widgets/custom_button.dart';
import 'package:city_connect/view/widgets/custom_input_field.dart';
import 'package:city_connect/view/widgets/main_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 480),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/logo.png', width: 130, height: 60),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Center(
                      child: Text(
                        'Welcome to City Connect',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),

                    const Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    CustomInputField(
                      hintText: "Enter your email",
                      controller: TextEditingController(),
                      isPassword: false,
                      maxLine: 1,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    CustomInputField(
                      hintText: "Enter your password",
                      controller: TextEditingController(),
                      isPassword: true,
                      maxLine: 1,
                    ),

                    const SizedBox(height: 24),

                    CustomButton(
                      text: "Login",
                      onPressed: () {
                        Get.to(() => MainNavigation());
                      },
                      backgroundColor: blueColor,
                      textColor: whiteColor,
                      height: 48,
                      width: double.infinity,
                    ),
                    const SizedBox(height: 16),

                    CustomButton(
                      text: "Create Account",
                      onPressed: () {
                        Get.to(()=>SignupPage());
                      },
                      backgroundColor: whiteColor,
                      textColor: blackColor,
                      height: 48,
                      width: double.infinity,
                    ),

                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(child: Divider(color: Colors.grey[300])),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'or',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Expanded(child: Divider(color: Colors.grey[300])),
                      ],
                    ),
                    const SizedBox(height: 20),

                    CustomButton(
                      text: "Continue With Google",
                      onPressed: () {},
                      backgroundColor: goldenColor,
                      textColor: blackColor,
                      height: 48,
                      width: double.infinity,
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xFF1E88E5),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
