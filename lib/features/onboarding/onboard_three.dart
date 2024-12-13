import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_test/features/signIn/login_view.dart';

import '../../constants/app_color.dart';
import '../../utils/resusable_widgets.dart';

class OnboardThree extends StatefulWidget {
  const OnboardThree({super.key});

  @override
  State<OnboardThree> createState() => _OnboardThreeState();
}

class _OnboardThreeState extends State<OnboardThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                logo(),
                const SizedBox(height: 30),
                numbers(3, "Customize your workspace"),
                const SizedBox(height: 5),
                const Text(
                  'You can easily create workflows for virtually any use case. We’ve got dozens of templates to get you started, or you can start with a blank canvas',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                const Text(
                  'What will you be using Clario for?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Wrap(spacing: 8.0, runSpacing: 6.0, children: [
                  outLineButton('Sales'),
                  outLineButton('Recruiting'),
                  outLineButton('Marketing'),
                  outLineButton('Investing'),
                  outLineButton('Customer Success'),
                  outLineButton('Human Resources'),
                  outLineButton('Customer Success'),
                  outLineButton('Fundraising'),
                ]),
                const SizedBox(height: 20),
                const Text(
                  'What are you working on at the moment?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Wrap(spacing: 8.0, runSpacing: 6.0, children: [
                  outLineButton('Tracking Leads'),
                  outLineButton('Hiring New People'),
                  outLineButton('Others'),
                ]),
                const SizedBox(height: 30),
                button(() {
                  Get.to(const LoginPage());
                }, 'Continue'),
                const SizedBox(height: 30),
                aboutApp(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
