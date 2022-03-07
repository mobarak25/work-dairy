import 'package:flutter/material.dart';

class CircleBtn extends StatelessWidget {
  final VoidCallback press;
  final IconData icon;
  final String title, subTitle;
  final bool isTitle;

  const CircleBtn({
    Key? key,
    required this.press,
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
                fontSize: 14,
              ),
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
