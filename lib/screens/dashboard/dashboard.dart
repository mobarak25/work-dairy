import 'package:flutter/material.dart';
import 'package:workdiaryapp/app_bar/dashboard_app_bar.dart';
import 'package:workdiaryapp/screens/dashboard/site_drawer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: DashboardAppBar(),
        drawer: SiteDrawer(),
      ),
    );
  }
}
