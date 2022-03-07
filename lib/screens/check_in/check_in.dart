import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:workdiaryapp/app_bar/account_app_bar.dart';
import 'package:workdiaryapp/bottom_bar/check_in_bottom_bar.dart';
import 'package:workdiaryapp/constants.dart';
import 'package:workdiaryapp/screens/check_out/check_out.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AccountAppBar(
          subTitle: 'Visit Plan',
          press: () {},
          icon: Icons.star,
        ),
        body: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DigitalClock(
                is24HourTimeFormat: false,
                showSecondsDigit: false,
                areaDecoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                hourMinuteDigitTextStyle: TextStyle(
                  height: 1,
                  fontSize: Get.width * 0.09,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF2B2F36),
                ),
                amPmDigitTextStyle: TextStyle(
                  height: 1,
                  fontSize: Get.width * 0.09,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF2B2F36),
                ),
              ),
              Text(
                DateFormat('EEEEE, MMMM d').format(DateTime.now()),
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xFF6D7074),
                ),
              ),
              SizedBox(height: Get.height * 0.04),
              SizedBox(
                width: Get.width * 0.8,
                child: AspectRatio(
                  aspectRatio: 1.4,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFF707070),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(
                          const CheckOutScreen(),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xFF707070),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            checkInOutSvg,
                            width: Get.width * 0.2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "Check In",
                style: TextStyle(
                  fontSize: Get.width * 0.06,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF2B2F36),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.pin_drop,
                    size: 19,
                    color: Color(0xFF56585D),
                  ),
                  Text(
                    "Location: Badda Link road, gulshan-1",
                    style: TextStyle(
                      height: 1,
                      fontSize: 14,
                      color: Color(0xFF6D7074),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CheckInBottomBar(),
      ),
    );
  }
}
