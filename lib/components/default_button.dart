import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback? press;
  final String title;
  const DefaultButton({
    Key? key,
    this.press,
    this.title = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 54,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(0),
            ),
          ),
          shadowColor: null,
          elevation: 0,
          primary: const Color(0xFF707070), // background
          onPrimary: Colors.white,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        onPressed: press,
      ),
    );
  }
}
