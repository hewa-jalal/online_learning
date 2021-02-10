part of 'lecture_bloc.dart';

@freezed
abstract class LectureEvent with _$LectureEvent {
  const factory LectureEvent.started() = _Started;
  const factory LectureEvent.downloadLecture({@required String fileUrl}) =
      _DownloadLecture;
  const factory LectureEvent.uploadLecture() = _UploadLecture;
}
