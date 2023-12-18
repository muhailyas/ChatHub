import 'package:chathub/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.onPressed,
    this.backgroundColor = CustomColor.secondaryColor,
    this.borderRadius = 20,
    this.height,
    this.width,
    required this.child,
  });
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double borderRadius;
  final double? width;
  final double? height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(backgroundColor),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius.dg))),
          fixedSize:
              MaterialStatePropertyAll(Size(width ?? 320.w, height ?? 40.h))),
      child: child,
    );
  }
}
