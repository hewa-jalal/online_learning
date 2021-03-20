part of 'lecture_bloc.dart';

@freezed
abstract class LectureEvent with _$LectureEvent {
  const factory LectureEvent.started() = _Started;
  const factory LectureEvent.selectFile() = _SelectFile;
  const factory LectureEvent.downloadLecture({@required String fileUrl}) =
      _DownloadLecture;
  const factory LectureEvent.uploadLecture({
    @required UserModel user,
    @required String title,
    @required String courseTitle,
    @required String filePath,
    String description,
  }) = _UploadLecture;
  const factory LectureEvent.getAllLectures() = _GetAllLectures;
  const factory LectureEvent.getAllLecturesByCourse({
    @required String courseTitle,
  }) = _GetAllLecturesByUserId;
  const factory LectureEvent.getAllCoursesByUserId() = _GetAllCoursesByUserId;

  const factory LectureEvent.createCourse({
    @required String courseTitle,
  }) = _CreateCourse;
}
