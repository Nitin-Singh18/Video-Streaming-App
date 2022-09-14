import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:video_streaming_app/app/routes/app_pages.dart';

import '../../../data/widgets/button.dart';
import '../../../data/widgets/text_field.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: size.height / 6,
              ),
              const Text(
                "SIGN UP",
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
                title: "Channel Name",
                hintText: "Enter channel name",
                size: size,
              ),
              SizedBox(
                height: size.height / 40,
              ),
              CTextField(
                title: "Email",
                hintText: "Enter your email",
                size: size,
              ),
              SizedBox(
                height: size.height / 40,
              ),
              CTextField(
                title: "Password",
                hintText: "Enter your password",
                size: size,
              ),
              SizedBox(
                height: size.height / 16,
              ),
              CButton(title: "SIGN UP", onTap: () {}, size: size),
              SizedBox(
                height: size.height / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.SIGN_IN);
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
