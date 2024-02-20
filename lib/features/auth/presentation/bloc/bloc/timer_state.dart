part of 'timer_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState({required int duration}) = _TimerState;
}
