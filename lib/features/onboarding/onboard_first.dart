import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_test/features/onboarding/onboard_two.dart';
import 'package:ui_test/constants/app_color.dart';
import 'package:ui_test/utils/resusable_widgets.dart';

class OnBoardingOne extends StatefulWidget {
  const OnBoardingOne({super.key});

  @override
  State<OnBoardingOne> createState() => _OnBoardingOneState();
}

class _OnBoardingOneState extends State<OnBoardingOne> {
  final nameController = TextEditingController();
  final lastNameController = TextEditingController();

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
                numbers(1, "Let's get to you know"),
                addImage(),
                const SizedBox(height: 16),
                textFormField('First name', nameController, () {}),
                const SizedBox(height: 16),
                textFormField('Last name', lastNameController, () {}),
                const SizedBox(height: 16),
                textFormField('Email', null, () {}),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Expanded(
                      flex: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subscribe to product updates',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Get the latest updates about features and products updates.',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: AppColors.secondaryColor),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 2,
                      child: CupertinoSwitch(
                        value: false,
                        onChanged: (value) {},
                        activeColor: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                button(() {
                  Get.to(const OnBoardingTwo());
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
