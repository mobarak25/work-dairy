import 'package:flutter/material.dart';
import 'package:workdiaryapp/components/circle_btn.dart';

class CheckInOutBottomBar extends StatelessWidget {
  const CheckInOutBottomBar({
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
            press: () {},
            subTitle: "Log in",
            icon: Icons.near_me,
          ),
        ],
      ),
    );
  }
}
