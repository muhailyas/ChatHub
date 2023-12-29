import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chathub/core/resources/data_state.dart';
import 'package:chathub/features/splash/domain/usecases/user_authenticity_check_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final UserAuthenticityCheckUseCase _authenticityCheckUseCase;
  SplashBloc(this._authenticityCheckUseCase) : super(const _Initial()) {
    on<_Started>(started);
  }

  FutureOr<void> started(event, Emitter<SplashState> emit) async {
    final dataState = await _authenticityCheckUseCase();
    if (dataState is DataSuccess) {
      emit(const SplashState.navigateToHome());
    } else {
      emit(const SplashState.navigateToLogin());
    }
  }
}
