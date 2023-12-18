import 'package:chathub/config/routes/routes.dart';
import 'package:chathub/core/colors/colors.dart';
import 'package:chathub/features/auth/presentation/widgets/elevated_button/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenOnboard extends StatelessWidget {
  const ScreenOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Spacer(),
        Image.asset("assets/Chat hub logo.png"),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: SizedBox(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(text: "Tap 'Agree and continue' to accept the "),
                    TextSpan(
                        text: "ChatHub Terms of service",
                        style: TextStyle(
                            color: CustomColor.blueColor,
                            fontWeight: FontWeight.w500))
                  ]))),
        ),
        ElevatedButtonWidget(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.mobileField);
          },
          child: Text(
            "Agree and continue",
            style: TextStyle(fontSize: 17.dm, color: CustomColor.whiteColor),
          ),
        ),
        SizedBox(height: 20.h),
      ],
    ));
  }
}
