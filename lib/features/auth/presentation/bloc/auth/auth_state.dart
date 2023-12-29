part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.mobileVerificationLoading() =
      MobileVerificationLoading;
  const factory AuthState.otpVerifyLoading() = OtpVerifyLoading;
  const factory AuthState.mobileVerified() = MobileVerified;
  const factory AuthState.navigateToOtp() = NavigateToOtp;
  const factory AuthState.otpVerified() = OtpVerified;
  const factory AuthState.otpVerificationError(
    String errorMessage,
  ) = OtpVerificationError;

  const factory AuthState.mobileVerificationError(
    String errorMessage,
  ) = MobileVerificationError;
}
