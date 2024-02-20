import 'package:chathub/config/routes/routes.dart';
import 'package:chathub/core/colors/colors.dart';
import 'package:chathub/core/constants/strings.dart';
import 'package:chathub/core/responsive/responsive.dart';
import 'package:chathub/core/responsive/responsive_width_hieght.dart';
import 'package:chathub/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:chathub/features/auth/presentation/widgets/circular_progress_bar/circular_progress.dart';
import 'package:chathub/features/auth/presentation/widgets/elevated_button/elevated_button.dart';
import 'package:chathub/features/auth/presentation/widgets/text_field/text_field.dart';
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
          padding: EdgeInsets.all(Screen.width * 0.05),
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
              _buildFieldRow(context, authBloc),
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
                  return _buildContinueButton(context, authBloc, state);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _buildFieldRow(BuildContext context, AuthBloc authBloc) {
    return SizedBox(
      height: Screen.height * 0.1,
      width: double.infinity,
      child: Row(
        children: [
          _buildCountryCode(context),
          SizedBox(width: Screen.width * 0.02),
          _buildMobileField(authBloc)
        ],
      ),
    );
  }

  Container _buildCountryCode(BuildContext context) {
    return Container(
      height: Screen.height * 0.065,
      width: Screen.width * 0.12,
      decoration: BoxDecoration(
          color: CustomColor.secondaryColor,
          borderRadius: BorderRadius.circular(20.dg)),
      child: FittedBox(
        child: Padding(
          padding: EdgeInsets.all(Responsive.isMobile(context) ? 7.dg : 5.dg),
          child: const Text(
            "+91",
            style: TextStyle(color: CustomColor.whiteColor),
          ),
        ),
      ),
    );
  }

  Flexible _buildMobileField(AuthBloc authBloc) {
    return Flexible(
      fit: FlexFit.tight,
      child: Container(
        height: Screen.height * 0.065,
        decoration: BoxDecoration(
            color: CustomColor.secondaryColor,
            borderRadius: BorderRadius.circular(20.dg)),
        child: MobileTextFieldWidget(
            textEditingController: authBloc.mobileController),
      ),
    );
  }

  Widget _buildContinueButton(
      BuildContext context, AuthBloc authBloc, AuthState state) {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButtonWidget(
          height: Screen.height * 0.07,
          width: Screen.width,
          onPressed: () {
            context.read<AuthBloc>().add(AuthEvent.validateMobile(
                mobile: authBloc.mobileController.text.trim()));
          },
          child: state is MobileVerificationLoading
              ? const CircularProgressIndicatorWidget()
              : const FittedBox(
                  child: Text(
                    AppStrings.continueText,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: CustomColor.whiteColor,
                    ),
                  ),
                )),
    );
  }
}
