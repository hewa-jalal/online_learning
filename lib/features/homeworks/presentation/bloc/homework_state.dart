part of 'homework_bloc.dart';

@freezed
abstract class HomeworkState with _$HomeworkState {
  const factory HomeworkState({
    @required String title,
    @required String courseTitle,
    @required String userId,
    @required List<HomeworkEntity> homeworks,
    String note,
    String description,
    String filePath,
    bool isSubmitting,
    Option<Either<HomeworkFailure, Unit>> homeworkFailureOrSuccessOption,
  }) = _HomeworkState;
  factory HomeworkState.initial() => HomeworkState(
        title: '',
        courseTitle: '',
        userId: '',
        homeworks: List.empty(),
        description: '',
        filePath: '',
        note: '',
        isSubmitting: false,
        homeworkFailureOrSuccessOption: none(),
      );
}
