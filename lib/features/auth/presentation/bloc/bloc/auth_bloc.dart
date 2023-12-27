import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chathub/core/resources/data_state.dart';
import 'package:chathub/features/auth/domain/usecases/authentication_params.dart';
import 'package:chathub/features/auth/domain/usecases/authentication_usecase/authentication_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthenticationUseCase _authenticationUseCase;
  AuthBloc(this._authenticationUseCase) : super(const _Initial()) {
    on<_SendMobileForOtp>(sendMobileForOtp);
  }

  FutureOr<void> sendMobileForOtp(event, Emitter<AuthState> emit) async {
    final dataState = await _authenticationUseCase(
        params: AuthenticationParams(mobile: event.mobile));
    if (dataState is DataSuccess) {
      emit(const AuthState.success());
    } else {
      emit(AuthState.error(dataState.error.toString()));
    }
  }
}
