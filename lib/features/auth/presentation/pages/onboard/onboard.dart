import 'package:chathub/config/routes/routes.dart';
import 'package:chathub/core/colors/colors.dart';
import 'package:chathub/core/constants/strings.dart';
import 'package:chathub/features/auth/presentation/widgets/elevated_button/elevated_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenOnboard extends StatelessWidget {
  const ScreenOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(width: double.infinity),
        const Spacer(),
        Image.asset(
          "assets/Chat hub logo.png",
          scale: 2,
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: SizedBox(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    const TextSpan(
                        text: AppStrings.onboardText,
                        style: TextStyle(color: CustomColor.whiteColor)),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, Routes.termsOfUse);
                          },
                        text: AppStrings.onboardTermsText,
                        style: const TextStyle(
                            color: CustomColor.blueColor,
                            fontWeight: FontWeight.w500))
                  ]))),
        ),
        ElevatedButtonWidget(
          onPressed: () {
            Navigator.pushNamed(context, Routes.mobileField);
          },
          child: const FittedBox(
            child: Text(
              AppStrings.onboardContinue,
              style: TextStyle(color: CustomColor.whiteColor),
            ),
          ),
        ),
        SizedBox(height: 20.h),
      ],
    ));
  }
}
