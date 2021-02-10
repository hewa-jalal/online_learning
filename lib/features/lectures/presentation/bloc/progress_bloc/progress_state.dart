part of 'progress_bloc.dart';

@freezed
abstract class ProgressState with _$ProgressState {
  const factory ProgressState.initial() = _Initial;
  const factory ProgressState.loading({@required double percentage}) = _Loading;
  const factory ProgressState.paused() = _Paused;
  const factory ProgressState.resumed() = _Resumed;
  const factory ProgressState.loaded() = _Loaded;
}
