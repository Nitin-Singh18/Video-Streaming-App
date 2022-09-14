import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:video_streaming_app/app/routes/app_pages.dart';

import '../../../data/widgets/button.dart';
import '../../../data/widgets/text_field.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 6,
                ),
                const Text(
                  "SIGN IN",
                  style: TextStyle(
                    fontSize: 46,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: size.height / 16,
                ),
                CTextField(
                  title: "Email",
                  hintText: "Enter your email",
                  size: size,
                ),
                SizedBox(
                  height: size.height / 35,
                ),
                CTextField(
                  title: "Password",
                  hintText: "Enter your password",
                  size: size,
                ),
                SizedBox(
                  height: size.height / 16,
                ),
                CButton(title: "LOGIN", onTap: () {}, size: size),
                SizedBox(
                  height: size.height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have account? ",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.SIGN_UP);
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
