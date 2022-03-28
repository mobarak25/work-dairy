import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/app_bar/dashboard_app_bar.dart';
import 'package:workdiaryapp/constants.dart';
import 'package:workdiaryapp/screens/dashboard/chart.dart';
import 'package:workdiaryapp/screens/dashboard/site_drawer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return SafeArea(
      child: Scaffold(
        appBar: const DashboardAppBar(),
        drawer: const SiteDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
              height: 30,
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  controller: tabController,
                  isScrollable: true,
                  labelColor: Colors.white,
                  unselectedLabelColor: kSecondaryColor,
                  labelPadding: const EdgeInsets.only(right: 15, left: 15),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFF505050),
                  ),
                  tabs: const [
                    Tab(child: Text("All")),
                    Tab(child: Text("Today")),
                    Tab(child: Text("Towmorrow")),
                    Tab(child: Text("This Week")),
                    Tab(child: Text("This Moth")),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 355,
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
              child: TabBarView(
                controller: tabController,
                children: const [
                  MyBarChart(),
                  Text("data 2"),
                  Text("data 3"),
                  Text("data 4"),
                  Text("data 5"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
