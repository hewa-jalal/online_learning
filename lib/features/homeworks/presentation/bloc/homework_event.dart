part of 'homework_bloc.dart';

@freezed
abstract class HomeworkEvent with _$HomeworkEvent {
  const factory HomeworkEvent.started() = _Started;

  const factory HomeworkEvent.uploadHomework({
    required UserModel user,
    required String title,
    required String courseTitle,
    required String filePath,
    required int dueDate,
    String? description,
  }) = _UploadHomework;

  const factory HomeworkEvent.selectFile() = _SelectFile;

  const factory HomeworkEvent.getAllHomeworksByCourse({
    required String courseTitle,
  }) = _GetAllHomeworksByCourse;

  const factory HomeworkEvent.getHomework({
    required String courseTitle,
    required String homeworkTitle,
  }) = _GetHomework;

  const factory HomeworkEvent.submitHomework({
    required String userId,
    required String fileUrl,
    required String courseTitle,
    required String homeworkTitle,
    String? note,
    int? submitDate,
  }) = _SubmitHomework;
}
