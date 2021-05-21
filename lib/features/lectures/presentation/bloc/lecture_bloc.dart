import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/lecture_entity.dart';
import '../../domain/usecases/create_course.dart';
import '../../domain/usecases/download_lecture.dart';
import '../../domain/usecases/get_all_courses_by_user_id.dart';
import '../../domain/usecases/get_all_lectures.dart';
import '../../domain/usecases/get_all_lectures_by_user_id.dart';
import '../../domain/usecases/submit_user.dart';
import '../../domain/usecases/upload_lecture.dart';
import '../../../user/core/usecase/use_case.dart';
import '../../../user/data/models/user_model.dart';

import '../../../user/core/errors/failures.dart';
import '../../data/models/lecture_model.dart';

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
  final DownloadLecture? downloadLecture;
  final UploadLecture? uploadLecture;
  final GetAllLectures? getAllLectures;
  final GetAllLecturesByCourse? getAllLecturesByCourse;
  final GetAllCoursesByUserId? getAllCoursesByUserId;
  final CreateCourse? createCourse;
  final SubmitUser? submitUser;
  LectureBloc({
    required this.downloadLecture,
    required this.uploadLecture,
    required this.getAllLectures,
    required this.getAllLecturesByCourse,
    required this.getAllCoursesByUserId,
    required this.createCourse,
    required this.submitUser,
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

        final either = await uploadLecture!(
          LectureParams(
            fileUrl: e.filePath,
            lectureTitle: e.title,
            description: e.description,
            user: e.user,
            courseTitle: e.courseTitle,
          ),
        );

        yield either.fold(
          ((failure) => state.copyWith(
                lectureFailureOrSuccessOption: none(),
              )),
          ((lectureEntity) => state.copyWith(
                isSubmitting: false,
              )),
        );
      },
      downloadLecture: (e) async* {
        final either = await downloadLecture!(
          LectureParams(
            user: UserModel.empty(),
            fileUrl: e.fileUrl,
            lectureTitle: e.lectureTitle,
            courseTitle: e.courseTitle,
          ),
        );
        yield either.fold(
          ((failure) => state.copyWith(
                lectureFailureOrSuccessOption: none(),
              )),
          // we don't want anything to happen when a file is downloading
          (lecture) => state,
        );
      },
      getAllLectures: (e) async* {
        final either = await getAllLectures!(NoParams());
        yield either.fold(
          ((failure) => state.copyWith(
                lectureFailureOrSuccessOption: none(),
              )),
          ((lectures) => state.copyWith(
                lectures: lectures,
                isSubmitting: false,
              )) as LectureState Function(List<LectureEntity>),
        );
      },
      getAllLecturesByCourse: (e) async* {
        // yield state.copyWith(
        //   isSubmitting: true,
        // );
        final either = await getAllLecturesByCourse!(e.courseTitle);
        yield either.fold(
          ((failure) => state.copyWith(
                lectureFailureOrSuccessOption: none(),
                isSubmitting: false,
              )),
          ((lectures) => state.copyWith(
                lectures: lectures,
                isSubmitting: false,
              )),
        );
      },
      createCourse: (e) async* {
        await createCourse!(e.courseTitle);
      },
      getAllCoursesByUserId: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
        );
        final either = await getAllCoursesByUserId!(state.userId);
        yield either.fold(
          ((failure) => state.copyWith(
                lectureFailureOrSuccessOption: none(),
              )),
          ((courseIds) => state.copyWith(
                courseIds: courseIds,
                isSubmitting: false,
              )),
        );
      },
      selectFile: (e) async* {
        final result = await (FilePicker.platform.pickFiles());
        final hash = result!.files.single.bytes;
        print('hash $hash');
        // yield state.copyWith(
        //   filePath: result.files.single.path,
        // );
      },
      submitUser: (e) async* {
        submitUser!(
          SubmitParams(
            lectureTitle: e.lectureTitle,
            userId: e.userId,
            courseTitle: e.courseTitle,
          ),
        );
      },
    );
  }
}
