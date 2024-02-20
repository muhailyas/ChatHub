import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  late Stream<int> timerStream;
  TimerBloc() : super(const TimerState(duration: 30)) {
    on<_Started>(_startTimer);
  }

  FutureOr<void> _startTimer(_Started event, Emitter<TimerState> emit) async {
    if (state.duration == 0) {
      emit(const TimerState(duration: 30));
    }
    timerStream = Stream<int>.periodic(
      const Duration(seconds: 1),
      (_) => (state.duration) - 1,
    ).take(state.duration);
    await for (int second in timerStream) {
      if (second < 0) {
        break;
      }
      emit(TimerState(duration: second));
    }
  }
}
