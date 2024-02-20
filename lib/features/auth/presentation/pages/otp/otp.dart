import 'dart:async';

import 'package:chathub/config/routes/routes.dart';
import 'package:chathub/config/theme/theme.dart';
import 'package:chathub/core/colors/colors.dart';
import 'package:chathub/core/constants/constants.dart';
import 'package:chathub/core/responsive/responsive_width_hieght.dart';
import 'package:chathub/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:chathub/features/auth/presentation/bloc/bloc/timer_bloc.dart';
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
    context.read<TimerBloc>().add(const TimerEvent.startTimer());
    otpTimer();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.dg),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Constants.fullWidthBox,
                Text(
                  "OTP Verification",
                  style: TextStyle(
                    fontSize: 25.dg,
                    fontWeight: FontWeight.w400,
                    color: CustomColor.whiteColor,
                  ),
                ),
                Constants.height10,
                Text(
                  "We are sending you an otp to verify your phone number",
                  style: TextStyle(
                    fontSize: 12.dg,
                    fontWeight: FontWeight.w300,
                    color: CustomColor.whiteColor,
                  ),
                ),
                Constants.height30,
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Please enter your otp",
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: CustomColor.whiteColor,
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                Align(
                  alignment: Alignment.center,
                  child: Pinput(
                    animationCurve: Curves.bounceIn,
                    length: 6,
                    controller: authBloc.otpController,
                    defaultPinTheme: defaultPinTheme,
                  ),
                ),
                Constants.height10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BlocBuilder<TimerBloc, TimerState>(
                        builder: (context, state) {
                      return GestureDetector(
                        onTap: () {
                          if (state.duration == 0) {
                            context.read<AuthBloc>().add(AuthEvent.sendOtp(
                                mobile: authBloc.mobileController.text.trim()));
                            context
                                .read<TimerBloc>()
                                .add(const TimerEvent.startTimer());
                          }
                        },
                        child: Text(
                          state.duration == 0
                              ? "Resend otp"
                              : '${state.duration} seconds remaining',
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
                Constants.height30,
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
                              width: Screen.width * 0.3,
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
                              child: const FittedBox(
                                child: Text(
                                  "Verify OTP",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: CustomColor.whiteColor,
                                  ),
                                ),
                              ),
                            );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
