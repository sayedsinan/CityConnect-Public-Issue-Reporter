import 'package:city_connect/controller/auth_controller.dart';
import 'package:city_connect/view/style/color.dart';
import 'package:city_connect/view/widgets/custom_button.dart';
import 'package:city_connect/view/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find<AuthController>();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Create your account',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Join CityConnect to report issues and track progress.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 32),

                      const Text(
                        'Full name',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomInputField(
                        hintText: "Alex Johnson",
                        controller: authController.nameController,
                        isPassword: false,
                        maxLine: 1,
                        validator: (value) {
                          if (authController.nameController.text.isEmpty) {
                            return "Please enter your name";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomInputField(
                        hintText: "alex@example.com",
                        controller: authController.emailController,
                        isPassword: false,
                        maxLine: 1,
                        validator: (value) {
                          if (authController.emailController.text.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!authController.emailController.text.contains(
                            "@",
                          )) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomInputField(
                        hintText: "Enter your password",
                        controller: authController.passwordController,
                        isPassword: true,
                        maxLine: 1,
                        validator: (value) {
                          if (authController.passwordController.text.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (authController.passwordController.text.length <
                              6) {
                            return 'Please enter more than 6 lettters';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Confirm password',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomInputField(
                        hintText: "Re-enter your password",
                        controller: authController.conforimPasswordController,
                        isPassword: true,
                        maxLine: 1,
                        validator: (value) {
                          if (authController
                              .conforimPasswordController
                              .text
                              .isEmpty) {
                            return 'This Field Cannnot be empty';
                          }
                          if (authController.conforimPasswordController.text !=
                              authController.passwordController.text) {
                            return "Both passwords are not matching";
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 32),

                      CustomButton(
                        text: "Create account",
                        onPressed: () {
                          if (formKey.currentState?.validate() ?? false) {
                            authController.signUp(
                              authController.nameController.text,
                              authController.emailController.text.trim(),
                              authController.passwordController.text,
                            );
                          }
                        },
                        backgroundColor: blackColor,
                        textColor: whiteColor,
                        height: 48,
                        width: double.infinity,
                      ),

                      const SizedBox(height: 20),

                      // Already have an account
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account? ',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: const Text(
                                'Log in',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
