import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:online_learning/features/lectures/domain/usecases/create_course.dart';
import 'package:online_learning/features/lectures/domain/usecases/download_lecture.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_courses_by_user_id.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_lectures.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_lectures_by_user_id.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_submitted_users.dart';
import 'package:online_learning/features/lectures/domain/usecases/submit_user.dart';
import 'package:online_learning/features/lectures/domain/usecases/upload_lecture.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';
import 'package:online_learning/features/user/data/models/user_model.dart';

import '../../../user/core/errors/failures.dart';
import '../../data/models/lecture_model.dart';
import '../../domain/entities/lecture_entity.dart';
import '../../domain/entities/lecture_entity.dart';
import '../../domain/entities/lecture_entity.dart';

part 'lecture_event.dart';
part 'lecture_state.dart';
part 'lecture_bloc.freezed.dart';

// @injectable
// class LectureBloc extends Bloc<LectureEvent, LectureState> {
//   final DownloadLecture downloadLecture;
//   final UploadLecture uploadLecture;
//   final GetAllLectures getAllLectures;
//   final GetAllLecturesByUserId getAllLecturesByUserId;
//   final GetAllCoursesByUserId getAllCoursesByUserId;
//   final CreateCourse createCourse;
//   LectureBloc({
//     @required this.downloadLecture,
//     @required this.uploadLecture,
//     @required this.getAllLectures,
//     @required this.getAllLecturesByUserId,
//     @required this.getAllCoursesByUserId,
//     @required this.createCourse,
//   }) : super(LectureState.initial());

//   @override
//   Stream<LectureState> mapEventToState(
//     LectureEvent event,
//   ) async* {
//     yield* event.map(
//       started: (e) async* {
//         yield LectureState.initial();
//       },
//       uploadLecture: (e) async* {
//         yield LectureState.loading();

//         final either = await uploadLecture(
//           LectureParams(
//             fileUrl: e.filePath,
//             title: e.title,
//             description: e.description,
//             user: e.user,
//             courseTitle: e.courseTitle,
//           ),
//         );
//         yield either.fold(
//           (l) => LectureState.failure(),
//           (r) => LectureState.lectureLoaded(lectureEntity: r),
//         );
//       },
//       downloadLecture: (e) async* {
//         final either = await downloadLecture(LectureParams(fileUrl: e.fileUrl));
//         yield either.fold(
//           (failure) => LectureState.initial(),
//           (lecture) => LectureState.lectureLoaded(lectureEntity: lecture),
//         );
//       },
//       getAllLectures: (e) async* {
//         final either = await getAllLectures(NoParams());
//         yield either.fold(
//           (failure) => LectureState.failure(),
//           (lectures) =>
//               LectureState.allLecturesLoaded(lecturesEntities: lectures),
//         );
//       },
//       getAllLecturesByCourse: (e) async* {
//         final either = await getAllLecturesByUserId(e.courseTitle);
//         yield either.fold(
//           (failure) => LectureState.failure(),
//           (lectures) =>
//               LectureState.allLecturesLoaded(lecturesEntities: lectures),
//         );
//       },
//       createCourse: (e) async* {
//         final either = await createCourse(e.courseTitle);
//         yield either.fold(
//           (failure) => LectureState.failure(),
//           (unit) => LectureState.initial(),
//         );
//       },
//       getAllCoursesByUserId: (e) async* {
//         final either = await getAllCoursesByUserId(e.userId);
//         yield either.fold(
//           (failure) => LectureState.failure(),
//           (courseIds) => LectureState.allCoursesLoaded(courseIds: courseIds),
//         );
//       },
//       selectFile: (e) async* {
//         final result = await FilePicker.platform.pickFiles();
//         yield LectureState.fileSelected(filePath: result.files.single.path);
//       },
//     );
//   }
// }

@injectable
class LectureBloc extends Bloc<LectureEvent, LectureState> {
  final DownloadLecture downloadLecture;
  final UploadLecture uploadLecture;
  final GetAllLectures getAllLectures;
  final GetAllLecturesByCourse getAllLecturesByCourse;
  final GetAllCoursesByUserId getAllCoursesByUserId;
  final CreateCourse createCourse;
  final SubmitUser submitUser;
  final GetAllSubmittedUsers getAllSubmittedUsers;
  LectureBloc({
    @required this.downloadLecture,
    @required this.uploadLecture,
    @required this.getAllLectures,
    @required this.getAllLecturesByCourse,
    @required this.getAllCoursesByUserId,
    @required this.createCourse,
    @required this.submitUser,
    @required this.getAllSubmittedUsers,
  }) : super(LectureState.initial());

  @override
  Stream<LectureState> mapEventToState(
    LectureEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield LectureState.initial();
      },
      uploadLecture: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
        );

        final either = await uploadLecture(
          LectureParams(
            fileUrl: e.filePath,
            title: e.title,
            description: e.description,
            user: e.user,
            courseTitle: e.courseTitle,
          ),
        );

        yield either.fold(
          (l) => state.copyWith(
            authFailureOrSuccessOption: none(),
          ),
          (lectureEntity) => state.copyWith(
            lecture: lectureEntity,
            userId: e.user.id,
            isSubmitting: false,
          ),
        );
      },
      downloadLecture: (e) async* {
        // final either = await downloadLecture(LectureParams(fileUrl: e.fileUrl));
        // yield either.fold(
        //   (failure) => LectureState.initial(),
        //   (lecture) => LectureState.lectureLoaded(lectureEntity: lecture),
        // );
      },
      getAllLectures: (e) async* {
        final either = await getAllLectures(NoParams());
        yield either.fold(
          (failure) => state.copyWith(
            authFailureOrSuccessOption: none(),
          ),
          (lectures) => state.copyWith(
            lectures: lectures,
          ),
        );
      },
      getAllLecturesByCourse: (e) async* {
        final either = await getAllLecturesByCourse(e.courseTitle);
        yield either.fold(
          (failure) => state.copyWith(
            authFailureOrSuccessOption: none(),
          ),
          (lectures) => state.copyWith(
            lectures: lectures,
          ),
        );
      },
      createCourse: (e) async* {
        await createCourse(e.courseTitle);
        // TODO: yield state to refresh courses card
      },
      getAllCoursesByUserId: (e) async* {
        // final either = await getAllCoursesByUserId(e.userId);
        yield state.copyWith(
          isSubmitting: true,
        );
        final either = await getAllCoursesByUserId(state.userId);
        yield either.fold(
          (failure) => state.copyWith(
            authFailureOrSuccessOption: none(),
          ),
          (courseIds) => state.copyWith(
            courseIds: courseIds,
            isSubmitting: false,
          ),
        );
      },
      selectFile: (e) async* {
        final result = await FilePicker.platform.pickFiles();
        yield state.copyWith(
          filePath: result.files.single.path,
        );
      },
      submitUser: (e) async* {
        submitUser(
          SubmitParams(
            lectureTitle: e.lectureTitle,
            userId: e.userId,
            courseTitle: 'AI',
          ),
        );
      },
      getAllSubmittedUsers: (e) async* {
        final either = await getAllSubmittedUsers(
          SubmitParams(
            lectureTitle: e.lectureTitle,
            userId: e.userId,
            courseTitle: 'AI',
          ),
        );
        yield either.fold(
          (failure) => state.copyWith(
            authFailureOrSuccessOption: none(),
          ),
          (submittedUsersRight) {
            print('submittedUsersBloc: $submittedUsersRight');
            return state.copyWith(
              lecture: LectureEntity(
                submittedUsers: submittedUsersRight,
              ),
            );
          },
        );
      },
    );
  }
}
