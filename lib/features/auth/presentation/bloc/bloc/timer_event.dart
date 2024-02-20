part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.startTimer() = _Started;
  const factory TimerEvent.resetTimer() = _ResetTimer;
}
