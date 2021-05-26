part of 'lecture_bloc.dart';

@freezed
abstract class LectureEvent with _$LectureEvent {
  const factory LectureEvent.started() = _Started;
  const factory LectureEvent.selectFile() = _SelectFile;
  const factory LectureEvent.downloadLecture({
    required String fileUrl,
    required String courseTitle,
    required String lectureTitle,
  }) = _DownloadLecture;
  const factory LectureEvent.uploadLecture({
    required UserModel user,
    required String title,
    required String courseTitle,
    String? description,
  }) = _UploadLecture;
  const factory LectureEvent.getAllLectures() = _GetAllLectures;
  const factory LectureEvent.getAllLecturesByCourse({
    required String courseTitle,
  }) = _GetAllLecturesByCourse;
  const factory LectureEvent.getAllCoursesByUserId() = _GetAllCoursesByUserId;

  const factory LectureEvent.createCourse({
    required String courseTitle,
  }) = _CreateCourse;

  const factory LectureEvent.submitUser({
    required String userId,
    required String courseTitle,
    required String lectureTitle,
  }) = _SubmitUser;
}
