import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Get.height * 0.015),
              Image.asset(
                logoPng,
                width: Get.width * 0.5,
              ),
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
                    SizedBox(
                      width: Get.width,
                      height: 54,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                          ),
                          shadowColor: null,
                          elevation: 0,
                          primary: const Color(0xFF707070), // background
                          onPrimary: Colors.white,
                        ),
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: kTextColor,
                ),
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 16,
                    color: kTextColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
