import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/components/default_button.dart';
import 'package:workdiaryapp/constants.dart';
import 'package:workdiaryapp/screens/dashboard/dashboard.dart';
import 'package:workdiaryapp/screens/reset_password/reset_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const SizedBox(),
          title: Image.asset(
            logoPng,
            width: Get.width * 0.5,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Welcome Back\n",
                      style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: Get.width * 0.1,
                      ),
                      children: const [
                        TextSpan(
                          text: "Please login to continue.",
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 21,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Get.height * 0.06),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: kSecondaryColor,
                          decoration: const InputDecoration(
                            hintText: "ID or Email",
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          obscureText: true,
                          cursorColor: kSecondaryColor,
                          decoration: const InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                        const SizedBox(height: 30),
                        DefaultButton(
                          title: "Log In",
                          press: () => Get.to(const DashboardScreen()),
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: kTextColor,
                    ),
                    onPressed: () => Get.to(const ResetPassword()),
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 16,
                        color: kTextColor,
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
