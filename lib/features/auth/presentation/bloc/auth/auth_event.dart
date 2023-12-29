part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendOtp({
    required String mobile,
  }) = _SendMobileForOtp;
  const factory AuthEvent.validateMobile({
    required String mobile,
  }) = ValidateMobile;

  const factory AuthEvent.verifyOtp({
    required String otp,
  }) = _VerifyOtp;
}
