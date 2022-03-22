import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/components/default_button.dart';
import 'package:workdiaryapp/constants.dart';
import 'package:workdiaryapp/screens/reset_password/create_new_password.dart';
import 'package:workdiaryapp/screens/reset_password/otp_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                    Icons.restart_alt,
                    size: Get.width * 0.44,
                    color: kSecondaryColor.withOpacity(0.6),
                  ),
                  const SizedBox(height: 30),
                  Form(
                    child: Column(
                      children: const [
                        OtpFields(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  DefaultButton(
                    title: "OK",
                    press: () => Get.to(const NewPassward()),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn't receive the code?",
                        style: TextStyle(fontSize: 16),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          child: Text(
                            "Resend",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
