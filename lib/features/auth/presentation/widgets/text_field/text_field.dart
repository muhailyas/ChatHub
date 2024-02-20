import 'package:chathub/core/responsive/responsive_width_hieght.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors/colors.dart';

class MobileTextFieldWidget extends StatelessWidget {
  const MobileTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: CustomColor.secondaryColor,
          contentPadding: EdgeInsets.only(
              bottom: Screen.width * 0.03, left: Screen.width * 0.03),
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.dg)))),
    );
  }
}
