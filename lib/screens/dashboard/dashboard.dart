import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/app_bar/dashboard_app_bar.dart';
import 'package:workdiaryapp/constants.dart';
import 'package:workdiaryapp/data/menu_json.dart';
import 'package:workdiaryapp/screens/login/login.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const DashboardAppBar(),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.05,
                    vertical: 20,
                  ),
                  color: const Color(0xFF606060),
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
                Padding(
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
                      ...List.generate(
                        menuList.length,
                        (index) => Container(
                          child: InkWell(
                            onTap: () => Get.to(const LoginScreen()),
                            child: Text(
                              menuList[index]["name"],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
