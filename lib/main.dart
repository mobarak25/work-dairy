import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/screens/check_in_screen/check_in.dart';
import 'package:workdiaryapp/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Work Diary',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: const CheckInScreen(),
    );
  }
}
