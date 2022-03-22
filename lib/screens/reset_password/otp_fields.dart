import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workdiaryapp/constants.dart';

class OtpFields extends StatefulWidget {
  const OtpFields({Key? key}) : super(key: key);

  @override
  _OtpFieldsState createState() => _OtpFieldsState();
}

class _OtpFieldsState extends State<OtpFields> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: Get.width * 0.18,
          child: TextFormField(
            autofocus: true,
            obscureText: true,
            cursorColor: kSecondaryColor,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              nextField(value, pin2FocusNode);
            },
          ),
        ),
        SizedBox(
          width: Get.width * 0.18,
          child: TextFormField(
            focusNode: pin2FocusNode,
            cursorColor: kSecondaryColor,
            onChanged: (value) => nextField(value, pin3FocusNode),
            obscureText: true,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
          ),
        ),
        SizedBox(
          width: Get.width * 0.18,
          child: TextFormField(
            focusNode: pin3FocusNode,
            cursorColor: kSecondaryColor,
            onChanged: (value) => nextField(value, pin4FocusNode),
            obscureText: true,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
          ),
        ),
        SizedBox(
          width: Get.width * 0.18,
          child: TextFormField(
            cursorColor: kSecondaryColor,
            keyboardType: TextInputType.number,
            focusNode: pin4FocusNode,
            onChanged: (value) {
              if (value.length == 1) {
                pin4FocusNode!.unfocus();
                // Then you need to check is the code is correct or not
              }
            },
            obscureText: true,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
