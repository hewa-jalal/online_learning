part of 'lecture_bloc.dart';

@freezed
abstract class LectureState with _$LectureState {
  const factory LectureState.initial() = _Initial;
  const factory LectureState.loading() = _Loading;
  const factory LectureState.lectureLoaded(
      {@required LectureEntity lectureEntity}) = _LectureLoaded;
}
