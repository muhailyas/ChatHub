import 'package:chathub/core/responsive/responsive.dart';
import 'package:chathub/core/responsive/responsive_width_hieght.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/colors/colors.dart';

class MobileTextFieldWidget extends StatelessWidget {
  const MobileTextFieldWidget({super.key, required this.textEditingController});
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      cursorColor: CustomColor.whiteColor,
      style: const TextStyle(color: CustomColor.whiteColor),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'mobile',
          hintStyle: const TextStyle(color: CustomColor.whiteColor),
          contentPadding: EdgeInsets.only(
              bottom: Responsive.isMobile(context)
                  ? -Screen.width * 0.007
                  : Screen.width * 0.005,
              left: Screen.width * 0.05),
          border: UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(20.dg)))),
    );
  }
}
