import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/constants.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final VoidCallback press;
  const DashboardAppBar({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(76);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        height: Get.height,
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.03,
          vertical: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Builder(
              builder: (context) => InkWell(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: Row(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kSecondaryColor.withOpacity(0.5),
                        ),
                        image: const DecorationImage(
                          image: ExactAssetImage(profilePng),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 7),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Abdul Baten",
                          style: TextStyle(
                            height: 1,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              "Marketing Manager ",
                              style: TextStyle(
                                height: 1,
                                fontSize: 14,
                              ),
                            ),
                            Icon(Icons.expand_more)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Icon(Icons.more_vert),
          ],
        ),
      ),
    );
  }
}
