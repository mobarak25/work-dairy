import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/constants.dart';
import 'package:workdiaryapp/screens/dashboard/menu_item.dart';

class SiteDrawer extends StatelessWidget {
  const SiteDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.05,
              vertical: 20,
            ),
            color: const Color(0xFF5ba4a5),
            child: Row(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: ExactAssetImage(profilePng),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 7),
                const Flexible(
                  child: Text.rich(
                    TextSpan(
                      text: "Hello,\n",
                      style: TextStyle(
                        height: 1.1,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: "Abdul Baten\n",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "Business Development",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.05,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Container(
                      width: 130,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kSecondaryColor.withOpacity(0.5),
                        ),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.logout,
                            size: 20,
                          ),
                          SizedBox(width: 3),
                          Text(
                            "Check Out",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Divider(
                      thickness: 1,
                      color: kSecondaryColor.withOpacity(0.5),
                    ),
                    const SizedBox(height: 5),
                    MenuItem(
                      leadeingIcons: Icons.person,
                      press: () {},
                      title: 'My Profile',
                    ),
                    MenuItem(
                      leadeingIcons: Icons.notifications,
                      press: () {},
                      title: 'Notification',
                      isNotification: true,
                    ),
                    MenuItem(
                      title: 'Add New visit plan',
                      leadeingIcons: Icons.control_point,
                      press: () {},
                    ),
                    MenuItem(
                      title: 'Todays visit plan',
                      leadeingIcons: Icons.tour,
                      press: () {},
                    ),
                    MenuItem(
                      title: 'Upcoming visit plan',
                      leadeingIcons: Icons.upcoming,
                      press: () {},
                    ),
                    MenuItem(
                      title: 'Total visit plan',
                      leadeingIcons: Icons.receipt_long,
                      press: () {},
                    ),
                    MenuItem(
                      title: 'Emergency Issue',
                      leadeingIcons: Icons.campaign,
                      press: () {},
                    ),
                    MenuItem(
                      title: 'Order Note',
                      leadeingIcons: Icons.fact_check,
                      press: () {},
                    ),
                    MenuItem(
                      title: 'Attendance',
                      leadeingIcons: Icons.perm_contact_calendar,
                      press: () {},
                    ),
                    Divider(
                      thickness: 1,
                      color: kSecondaryColor.withOpacity(0.5),
                    ),
                    const SizedBox(height: 5),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: kTextColor,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Change password",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: kTextColor,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
