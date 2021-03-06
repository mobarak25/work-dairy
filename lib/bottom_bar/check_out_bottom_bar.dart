import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/components/circle_btn.dart';
import 'package:workdiaryapp/screens/check_in/check_in.dart';

class CheckOutBottomBar extends StatelessWidget {
  const CheckOutBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03, vertical: 5),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleBtn(
            press: () {
              Get.to(
                const CheckInScreen(),
              );
            },
            title: "10:30 AM",
            isTitle: true,
            subTitle: "Check in",
            icon: Icons.update,
          ),
          CircleBtn(
            press: () {},
            title: "-- : --",
            isTitle: true,
            subTitle: "Check Out",
            icon: Icons.schedule,
          ),
          CircleBtn(
            press: () {},
            title: "08:25 H",
            isTitle: true,
            subTitle: "Total Time",
            icon: Icons.update,
          ),
        ],
      ),
    );
  }
}
