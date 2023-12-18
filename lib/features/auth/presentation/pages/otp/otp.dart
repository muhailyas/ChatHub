import 'dart:async';

import 'package:chathub/config/routes/routes.dart';
import 'package:chathub/config/theme/theme.dart';
import 'package:chathub/core/colors/colors.dart';
import 'package:chathub/features/auth/presentation/widgets/elevated_button/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class ScreenOtp extends StatelessWidget {
  ScreenOtp({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> remainingTime = ValueNotifier(10);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime.value > 0) {
        remainingTime.value--;
      } else {
        timer.cancel();
      }
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 10.h,
              ),
              Text(
                "OTP Verification",
                style: TextStyle(
                  fontSize: 25.h,
                  fontWeight: FontWeight.w400,
                  color: CustomColor.whiteColor,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "We are sending you an otp to verify your phone number",
                style: TextStyle(
                  fontSize: 12.dg,
                  fontWeight: FontWeight.w300,
                  color: CustomColor.whiteColor,
                ),
              ),
              SizedBox(height: 30.h),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Please enter your otp",
                  style: TextStyle(
                    fontSize: 15.h,
                    color: CustomColor.whiteColor,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Pinput(
                animationCurve: Curves.bounceIn,
                length: 6,
                controller: controller,
                defaultPinTheme: defaultPinTheme,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ValueListenableBuilder(
                      valueListenable: remainingTime,
                      builder: (context, value, _) {
                        return Text(
                          remainingTime.value == 0
                              ? "Resend otp"
                              : '${remainingTime.value} seconds remaining',
                          style: TextStyle(
                            fontSize: 12.h,
                            color: CustomColor.whiteColor,
                            decoration: remainingTime.value != 0
                                ? null
                                : TextDecoration.underline,
                          ),
                        );
                      }),
                ],
              ),
              SizedBox(height: 30.dg),
              Align(
                alignment: Alignment.center,
                child: ElevatedButtonWidget(
                  width: 150.w,
                  onPressed: () {
                    if (controller.text.length == 6) {
                      Navigator.pushReplacementNamed(context, Routes.home);
                    }
                  },
                  child: Text(
                    "Verify OTP",
                    style: TextStyle(
                      fontSize: 14.dm,
                      fontWeight: FontWeight.w400,
                      color: CustomColor.whiteColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
