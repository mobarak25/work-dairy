import 'package:flutter/material.dart';

class CircleBtn extends StatelessWidget {
  final VoidCallback press;
  final IconData icon;
  final String subTitle;

  const CircleBtn({
    Key? key,
    required this.press,
    required this.icon,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Container(
            width: 45, //Get.width * .3,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
            child: Center(child: Icon(icon)),
          ),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
