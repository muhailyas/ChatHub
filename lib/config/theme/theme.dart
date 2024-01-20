import 'package:chathub/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: CustomColor.scaffoldBackgroundColor,
      appBarTheme: const AppBarTheme(
          backgroundColor: CustomColor.scaffoldBackgroundColor));
}

final defaultPinTheme = PinTheme(
  width: 56.dg,
  height: 50.dg,
  textStyle: const TextStyle(
    fontSize: 22,
    color: CustomColor.whiteColor,
  ),
  decoration: BoxDecoration(
    color: CustomColor.secondaryColor,
    borderRadius: BorderRadius.circular(10.h),
  ),
);
