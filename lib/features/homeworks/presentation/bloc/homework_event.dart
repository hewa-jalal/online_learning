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

  const factory HomeworkEvent.getSubmittedHomework({
    required String courseTitle,
    required String homeworkTitle,
    required String userId,
  }) = _GetSubmittedHomework;

  const factory HomeworkEvent.submitHomework({
    required String userId,
    required String courseTitle,
    required String homeworkTitle,
    String? note,
    int? submitDate,
  }) = _SubmitHomework;
}
