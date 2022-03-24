import 'package:flutter/material.dart';
import 'package:workdiaryapp/constants.dart';

class MenuItem extends StatelessWidget {
  final IconData leadeingIcons;
  final String title;
  final VoidCallback press;
  final bool isNotification;
  final int notificationCount;

  const MenuItem({
    Key? key,
    required this.leadeingIcons,
    required this.title,
    required this.press,
    this.isNotification = false,
    this.notificationCount = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        height: 47,
        child: Row(
          children: [
            Icon(
              leadeingIcons,
              size: 25,
              color: kSecondaryColor,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const Spacer(),
            if (isNotification)
              Container(
                width: 27,
                height: 27,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: kTextColor,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "$notificationCount",
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
