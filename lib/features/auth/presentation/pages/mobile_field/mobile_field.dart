import 'package:chathub/config/routes/routes.dart';
import 'package:chathub/core/colors/colors.dart';
import 'package:chathub/core/constants/constants.dart';
import 'package:chathub/core/constants/strings.dart';
import 'package:chathub/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:chathub/features/auth/presentation/widgets/circular_progress_bar/circular_progress.dart';
import 'package:chathub/features/auth/presentation/widgets/elevated_button/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileFieldScreen extends StatelessWidget {
  const MobileFieldScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: double.infinity, height: 20.h),
              Text(
                AppStrings.verifyMobile,
                style: TextStyle(
                  fontSize: 22.dg,
                  fontWeight: FontWeight.w400,
                  color: CustomColor.whiteColor,
                ),
              ),
              SizedBox(height: 5.dg),
              Text(
                AppStrings.verifyYourAccount,
                style: TextStyle(
                  fontSize: 10.dg,
                  fontWeight: FontWeight.w300,
                  color: CustomColor.whiteColor,
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40.h,
                    width: 60.h,
                    decoration: BoxDecoration(
                        color: CustomColor.secondaryColor,
                        borderRadius: Constants.borderRadius25H),
                    child: Center(
                        child: Text(
                      AppStrings.countryCode,
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
                      borderRadius: Constants.borderRadius25H,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0.h,
                          vertical: 6.w,
                        ),
                        child: TextField(
                          controller: authBloc.mobileController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: AppStrings.hintTextMobile,
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
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is MobileVerified) {
                    context.read<AuthBloc>().add(AuthEvent.sendOtp(
                        mobile: authBloc.mobileController.text.trim()));
                  }
                  if (state is MobileVerificationError) {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: CustomColor.secondaryColor,
                        duration: const Duration(seconds: 1),
                        content: Text(
                          state.errorMessage,
                          style: TextStyle(
                            fontSize: 12.dg,
                            fontWeight: FontWeight.w500,
                            color: CustomColor.redColor,
                          ),
                        )));
                  }
                  if (state is NavigateToOtp) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Routes.otp, (route) => false);
                  }
                },
                builder: (context, state) {
                  return ElevatedButtonWidget(
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthEvent.validateMobile(
                            mobile: authBloc.mobileController.text.trim()));
                      },
                      child: state is MobileVerificationLoading
                          ? const CircularProgressIndicatorWidget()
                          : Text(
                              AppStrings.continueText,
                              style: TextStyle(
                                fontSize: 15.dm,
                                fontWeight: FontWeight.w400,
                                color: CustomColor.whiteColor,
                              ),
                            ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
