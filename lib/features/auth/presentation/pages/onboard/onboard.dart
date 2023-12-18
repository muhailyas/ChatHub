import 'package:chathub/core/colors/colors.dart';
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
                            color: Color.fromARGB(255, 7, 126, 223),
                            fontWeight: FontWeight.w500))
                  ]))),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor:
                  const MaterialStatePropertyAll(CustomColor.secondaryColor),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
              fixedSize: MaterialStatePropertyAll(Size(320.w, 40.h))),
          child: Text(
            "Agree and continue",
            style: TextStyle(fontSize: 20.sp),
          ),
        ),
        SizedBox(height: 20.h),
      ],
    ));
  }
}
