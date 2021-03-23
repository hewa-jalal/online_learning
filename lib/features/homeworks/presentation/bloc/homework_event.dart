part of 'homework_bloc.dart';

@freezed
abstract class HomeworkEvent with _$HomeworkEvent {
  const factory HomeworkEvent.started() = _Started;

  const factory HomeworkEvent.uploadHomework({
    @required UserModel user,
    @required String title,
    @required String courseTitle,
    @required String filePath,
    @required int dueDate,
    String description,
  }) = _UploadHomework;

  const factory HomeworkEvent.selectFile() = _SelectFile;
}
