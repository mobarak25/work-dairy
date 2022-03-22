import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/components/default_button.dart';
import 'package:workdiaryapp/constants.dart';
import 'package:workdiaryapp/screens/login/login.dart';
import 'package:workdiaryapp/screens/reset_password/otp.dart';

class NewPassward extends StatefulWidget {
  const NewPassward({Key? key}) : super(key: key);

  @override
  State<NewPassward> createState() => _NewPasswardState();
}

class _NewPasswardState extends State<NewPassward> {
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
                    Icons.lock_open,
                    size: Get.width * 0.44,
                    color: kSecondaryColor.withOpacity(0.6),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Create new password",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: Get.width * 0.06,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "All is done  to reset your password.",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Form(
                    child: Column(
                      children: [
                        SizedBox(
                          width: Get.width,
                          child: const Text(
                            "Create Password",
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          cursorColor: kSecondaryColor,
                          decoration: const InputDecoration(
                            hintText: "* * * * * * * * *",
                            hintStyle: TextStyle(fontSize: 16),
                            suffixIcon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: Get.width,
                          child: const Text(
                            "Confirm  Password",
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        TextFormField(
                          obscureText: false,
                          cursorColor: kSecondaryColor,
                          decoration: const InputDecoration(
                            hintText: "* * * * * * * * *",
                            hintStyle: TextStyle(fontSize: 16),
                            suffixIcon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                        const SizedBox(height: 30),
                        DefaultButton(
                          title: "Reset password",
                          press: () => Get.to(const OtpScreen()),
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () => Get.off(const LoginScreen()),
                    child: const Text(
                      "Close",
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
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
