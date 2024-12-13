import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_test/features/home/home_view.dart';
import 'package:ui_test/constants/image_paths.dart';
import 'package:ui_test/utils/resusable_widgets.dart';

import '../../constants/app_color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.borderColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.09),
            Padding(padding: const EdgeInsets.only(left: 10), child: logo()),
            SizedBox(height: MediaQuery.of(context).size.height * 0.026),
            Container(
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 5),
                      const Image(
                        image: AssetImage(ImagePath.profileIcon),
                        height: 56,
                        width: 56,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Login to your account',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Enter your details to login',
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.secondaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 20),
                      textFormField('Email', _emailController, null),
                      const SizedBox(height: 20),
                      textFormField('Password', _passwordController, null),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: false,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: const BorderSide(
                                        color: AppColors.borderColor)),
                                onChanged:
                                    (value) {}, // Implement keep me logged in logic
                              ),
                              const Text('Keep me logged in'),
                            ],
                          ),
                          TextButton(
                            onPressed: () {}, // Implement forgot password logic
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(color: AppColors.primaryColor),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      button(() {
                        Get.to(const HomeView());

                        // if (_formKey.currentState!.validate()) {
                        //   String email = _emailController.text;
                        //   String password = _passwordController.text;
                        // }
                      }, 'Sign In'),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                      color: AppColors.blackColour,
                      fontWeight: FontWeight.w500),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            aboutApp(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
