import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:chathub/core/resources/data_state.dart';
import 'package:chathub/features/auth/data/data_sources/remote/auth_service.dart';
import 'package:chathub/features/auth/domain/entities/exceptions/extract_exception.dart';
import 'package:chathub/features/auth/domain/entities/exceptions/validation_exception.dart';
import 'package:chathub/features/auth/domain/usecases/authentication_params.dart';
import 'package:chathub/features/auth/domain/usecases/send_otp_usecase/send_otp_usecase.dart';
import 'package:chathub/features/auth/domain/usecases/validate_mobile_usecase/validate_mobile_usecase.dart';
import 'package:chathub/features/auth/domain/usecases/verify_otp_usecase/verify_otp_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SendOtpUseCase _authenticationUseCase;
  final VerifyOtpUseCase _otpUseCase;
  final ValidateMobileUseCase _validateMobile;
  AuthBloc(this._authenticationUseCase, this._otpUseCase, this._validateMobile)
      : super(const _Initial()) {
    on<_SendMobileForOtp>(sendMobileForOtp);
    on<_VerifyOtp>(verifyOtp);
    on<ValidateMobile>(validateMobile);
  }

  FutureOr<void> sendMobileForOtp(event, Emitter<AuthState> emit) async {
    final dataState = await _authenticationUseCase(
        params: AuthenticationParams(mobile: event.mobile));
    if (dataState is DataSuccess) {
    } else {
      emit(AuthState.mobileVerificationError(dataState.error.toString()));
    }
  }

  FutureOr<void> verifyOtp(event, Emitter<AuthState> emit) async {
    emit(const AuthState.otpVerifyLoading());
    final dataState = await _otpUseCase(
        params:
            VerificationParams(otp: event.otp, validationId: verificationUID));
    if (dataState is DataSuccess) {
      emit(const AuthState.otpVerified());
    } else {
      String? errorMessage = extractExceptionMessage(dataState.error);
      emit(AuthState.otpVerificationError(errorMessage ?? 'Error'));
    }
  }

  FutureOr<void> validateMobile(
      ValidateMobile event, Emitter<AuthState> emit) async {
    try {
      emit(const AuthState.mobileVerificationLoading());
      await Future.delayed(const Duration(milliseconds: 100));
      await _validateMobile(params: AuthenticationParams(mobile: event.mobile));
      emit(const AuthState.mobileVerified());
      emit(const AuthState.navigateToOtp());
    } catch (e) {
      if (e is ValidationException) {
        emit(AuthState.mobileVerificationError(e.message));
        return;
      }
      emit(AuthState.mobileVerificationError(e.toString()));
    }
  }
}
