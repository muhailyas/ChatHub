part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendMobileForOtp({
    required String mobile,
  }) = _SendMobileForOtp;
}
