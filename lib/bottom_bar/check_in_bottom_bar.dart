import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/components/circle_btn.dart';
import 'package:workdiaryapp/screens/login/login.dart';

class CheckInBottomBar extends StatelessWidget {
  const CheckInBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleBtn(
            press: () => Get.to(const LoginScreen()),
            subTitle: "Log in",
            icon: Icons.near_me,
          ),
        ],
      ),
    );
  }
}
