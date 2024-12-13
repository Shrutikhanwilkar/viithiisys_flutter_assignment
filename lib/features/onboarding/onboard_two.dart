import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_test/features/onboarding/onboard_three.dart';
import 'package:ui_test/utils/resusable_widgets.dart';

import '../../constants/app_color.dart';

class OnBoardingTwo extends StatefulWidget {
  const OnBoardingTwo({super.key});

  @override
  State<OnBoardingTwo> createState() => _OnBoardingTwoState();
}

class _OnBoardingTwoState extends State<OnBoardingTwo> {
  final nameController = TextEditingController();
  final handleController = TextEditingController();
  final billingCountryController = TextEditingController();

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
                numbers(2, "Create your workspace"),
                addImage(),
                const SizedBox(height: 16),
                textFormField('Workspace name', nameController, () {}),
                const SizedBox(height: 16),
                textFormField('Workspace handle', handleController, () {}),
                const SizedBox(height: 16),
                textFormField('Billing country', billingCountryController, () {
                  showCountryPicker(
                    context: context,
                    showPhoneCode: true,
                    onSelect: (Country country) {
                      billingCountryController.text =
                          '${country.flagEmoji} ${country.name}';
                    },
                  );
                }),
                const SizedBox(height: 30),
                button(() {
                  Get.to(const OnboardThree());
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
