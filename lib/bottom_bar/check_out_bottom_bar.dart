import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/components/circle_btn.dart';

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
            press: () {},
            subTitle: "Check in",
            icon: Icons.update,
          ),
          CircleBtn(
            press: () {},
            subTitle: "Check Out",
            icon: Icons.schedule,
          ),
          CircleBtn(
            press: () {},
            subTitle: "Total Time",
            icon: Icons.update,
          ),
        ],
      ),
    );
  }
}
