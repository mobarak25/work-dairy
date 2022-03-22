import 'package:flutter/material.dart';
import 'package:workdiaryapp/app_bar/dashboard_app_bar.dart';

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
              children: [
                Container(
                  height: 50,
                  color: const Color(0xFF606060),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
