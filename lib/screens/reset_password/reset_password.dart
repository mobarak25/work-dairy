import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/components/default_button.dart';
import 'package:workdiaryapp/constants.dart';
import 'package:workdiaryapp/screens/reset_password/otp.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.05,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock,
                    size: Get.width * 0.44,
                    color: kSecondaryColor.withOpacity(0.6),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Reset password",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: Get.width * 0.06,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Enter the email or mobile related to your record and we'll send OTP to your phone or email with guidelines to reset your password.",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: Get.width,
                    child: const Text(
                      "Email or Phone number",
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: kSecondaryColor,
                          decoration: const InputDecoration(
                            hintText: "Please enter your email or phone number",
                            hintStyle: TextStyle(fontSize: 12),
                          ),
                        ),
                        const SizedBox(height: 30),
                        DefaultButton(
                          title: "Sent OTP",
                          press: () => Get.to(const OtpScreen()),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
