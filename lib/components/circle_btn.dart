import 'package:flutter/material.dart';

class CircleBtn extends StatelessWidget {
  final VoidCallback? press;
  final IconData icon;
  final String title, subTitle;
  final bool isTitle;

  const CircleBtn({
    Key? key,
    this.press,
    required this.icon,
    this.title = "-- : --",
    required this.subTitle,
    this.isTitle = false,
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
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
            child: Center(child: Icon(icon)),
          ),
          if (isTitle)
            Text(
              title,
              style: const TextStyle(
                height: 1,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          Text(
            subTitle,
            style: const TextStyle(
              height: 1.1,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
