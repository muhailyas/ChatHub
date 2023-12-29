import 'dart:async';

import 'package:chathub/config/routes/routes.dart';
import 'package:chathub/config/theme/theme.dart';
import 'package:chathub/core/colors/colors.dart';
import 'package:chathub/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:chathub/features/auth/presentation/widgets/circular_progress_bar/circular_progress.dart';
import 'package:chathub/features/auth/presentation/widgets/elevated_button/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

ValueNotifier<int> remainingTime = ValueNotifier(30);

class ScreenOtp extends StatelessWidget {
  const ScreenOtp({super.key});

  void otpTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime.value > 0) {
        remainingTime.value--;
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    otpTimer();
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
                controller: authBloc.otpController,
                defaultPinTheme: defaultPinTheme,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ValueListenableBuilder(
                      valueListenable: remainingTime,
                      builder: (context, value, _) {
                        return GestureDetector(
                          onTap: () {
                            if (remainingTime.value == 0) {
                              context.read<AuthBloc>().add(AuthEvent.sendOtp(
                                  mobile:
                                      authBloc.mobileController.text.trim()));
                              remainingTime.value = 30;
                              otpTimer();
                            }
                          },
                          child: Text(
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
                          ),
                        );
                      }),
                ],
              ),
              SizedBox(height: 30.dg),
              Align(
                alignment: Alignment.center,
                child: BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is OtpVerified) {
                      remainingTime.value = 0;
                      Navigator.pushReplacementNamed(context, Routes.home);
                    }
                    if (state is OtpVerificationError) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: CustomColor.secondaryColor,
                          content: Text(
                            state.errorMessage.toString(),
                            style: TextStyle(
                              fontSize: 12.dg,
                              fontWeight: FontWeight.w500,
                              color: CustomColor.redColor,
                            ),
                          )));
                    }
                  },
                  builder: (context, state) {
                    return state is OtpVerifyLoading
                        ? const CircularProgressIndicatorWidget()
                        : ElevatedButtonWidget(
                            width: 150.w,
                            onPressed: () {
                              if (authBloc.otpController.text.length == 6) {
                                context.read<AuthBloc>().add(
                                    AuthEvent.verifyOtp(
                                        otp: authBloc.otpController.text
                                            .trim()));
                              } else {
                                ScaffoldMessenger.of(context)
                                    .hideCurrentSnackBar();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor:
                                            CustomColor.secondaryColor,
                                        content: Text(
                                          authBloc.otpController.text.isEmpty
                                              ? 'Otp is required'
                                              : 'Otp must 6 letters',
                                          style: TextStyle(
                                            fontSize: 12.dg,
                                            fontWeight: FontWeight.w500,
                                            color: CustomColor.redColor,
                                          ),
                                        )));
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
                          );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
