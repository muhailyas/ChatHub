import 'package:chathub/core/colors/colors.dart';
import 'package:chathub/features/auth/presentation/widgets/elevated_button/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileFieldScreen extends StatelessWidget {
  const MobileFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(width: double.infinity, height: 20.h),
            Text(
              "Verify your phone number",
              style: TextStyle(
                fontSize: 22.dg,
                fontWeight: FontWeight.w500,
                color: CustomColor.whiteColor,
              ),
            ),
            SizedBox(height: 5.dg),
            Text(
              "ChatHub will need to verify your account",
              style: TextStyle(
                fontSize: 10.dg,
                fontWeight: FontWeight.w300,
                color: CustomColor.whiteColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0.dg),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40.h,
                    width: 55.h,
                    decoration: BoxDecoration(
                        color: CustomColor.secondaryColor,
                        borderRadius: BorderRadius.circular(25.h)),
                    child: Center(
                        child: Text(
                      "+91",
                      style: TextStyle(
                          fontSize: 12.dg,
                          color: CustomColor.whiteColor,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                  Container(
                    width: 245.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: CustomColor.secondaryColor,
                      borderRadius: BorderRadius.circular(25.h),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0.h),
                        child: TextFormField(
                          controller: TextEditingController(),
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "mobile",
                            hintStyle: TextStyle(
                              fontSize: 12.dg,
                              color: CustomColor.whiteColor,
                            ),
                          ),
                          cursorColor: CustomColor.secondarySaffron,
                          style: TextStyle(
                            fontSize: 12.dg,
                            color: CustomColor.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ElevatedButtonWidget(
                onPressed: () {},
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 15.dm,
                    fontWeight: FontWeight.w400,
                    color: CustomColor.whiteColor,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
