part of 'lecture_bloc.dart';

@freezed
abstract class LectureEvent with _$LectureEvent {
  const factory LectureEvent.started() = _Started;
  const factory LectureEvent.postLecture() = _PostLecture;
}
