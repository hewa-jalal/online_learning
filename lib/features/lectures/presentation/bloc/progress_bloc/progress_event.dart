part of 'progress_bloc.dart';

@freezed
abstract class ProgressEvent with _$ProgressEvent {
  const factory ProgressEvent.started() = _Started;
  const factory ProgressEvent.resume() = _Resume;
  const factory ProgressEvent.pause() = _Pause;
  const factory ProgressEvent.updated(double tickCount) = _Updated;
}
