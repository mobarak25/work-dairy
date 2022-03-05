import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/components/circle_btn.dart';

class AccountAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String subTitle;
  final IconData icon;
  final VoidCallback press;
  const AccountAppBar({
    Key? key,
    required this.subTitle,
    required this.icon,
    required this.press,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(76);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: Get.width * 0.44,
            ),
            CircleBtn(press: press, icon: icon, subTitle: subTitle),
          ],
        ),
      ),
    );
  }
}
