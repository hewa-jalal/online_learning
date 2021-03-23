part of 'lecture_bloc.dart';

// @freezed
// abstract class LectureState with _$LectureState {
//   const factory LectureState.initial() = _Initial;
//   const factory LectureState.loading() = _Loading;
//   const factory LectureState.failure() = _Failure;
//   const factory LectureState.fileSelected({@required String filePath}) =
//       _FileSelected;
//   const factory LectureState.lectureLoaded({
//     @required LectureEntity lectureEntity,
//   }) = _LectureLoaded;
//   const factory LectureState.allLecturesLoaded({
//     @required List<LectureEntity> lecturesEntities,
//   }) = _AllLecturesLoaded;
//   const factory LectureState.allCoursesLoaded({
//     @required List<String> courseIds,
//   }) = _AllCoursesLoaded;
// }
@freezed
abstract class LectureState with _$LectureState {
  const factory LectureState({
    @required LectureEntity lecture,
    @required String userId,
    @required String filePath,
    @required bool isSubmitting,
    @required List<LectureEntity> lectures,
    @required List<String> courseIds,
    // @required List<String> submittedUsers,
    @required
        Option<Either<LectureFailure, Unit>> lectureFailureOrSuccessOption,
  }) = _LectureState;

  factory LectureState.initial() => LectureState(
        lecture: LectureModel.empty(),
        userId: '',
        filePath: '',
        lectures: List.empty(),
        courseIds: List.empty(),
        // submittedUsers: List.empty(),
        isSubmitting: false,
        lectureFailureOrSuccessOption: none(),
      );
}
