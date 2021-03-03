import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:online_learning/features/lectures/domain/usecases/create_course.dart';
import 'package:online_learning/features/lectures/domain/usecases/download_lecture.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_courses_by_user_id.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_lectures.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_lectures_by_user_id.dart';
import 'package:online_learning/features/lectures/domain/usecases/upload_lecture.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';
import 'package:online_learning/features/user/data/models/user_mode.dart';

part 'lecture_event.dart';
part 'lecture_state.dart';
part 'lecture_bloc.freezed.dart';

@injectable
class LectureBloc extends Bloc<LectureEvent, LectureState> {
  final DownloadLecture downloadLecture;
  final UploadLecture uploadLecture;
  final GetAllLectures getAllLectures;
  final GetAllLecturesByUserId getAllLecturesByUserId;
  final GetAllCoursesByUserId getAllCoursesByUserId;
  final CreateCourse createCourse;
  LectureBloc({
    @required this.downloadLecture,
    @required this.uploadLecture,
    @required this.getAllLectures,
    @required this.getAllLecturesByUserId,
    @required this.getAllCoursesByUserId,
    @required this.createCourse,
  }) : super(_Initial());

  @override
  Stream<LectureState> mapEventToState(
    LectureEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield LectureState.initial();
      },
      uploadLecture: (e) async* {
        final result = await FilePicker.platform.pickFiles();
        if (result != null) {
          yield LectureState.loading();

          final either = await uploadLecture(
            LectureParams(
              fileUrl: result.files.single.path,
              title: e.title,
              description: e.description,
              user: e.user,
              courseTitle: e.courseTitle,
            ),
          );
          // yield either.fold(
          //   (l) => LectureState.lectureLoaded(
          //     lectureEntity: LectureEntity(fileUrl: 'dumbUrl'),
          //   ),
          //   (lecture) => LectureState.lectureLoaded(lectureEntity: lecture),
          // );
        } else {
          print('result is null');
        }
      },
      downloadLecture: (e) async* {
        final either = await downloadLecture(LectureParams(fileUrl: e.fileUrl));
        yield either.fold(
          (failure) => LectureState.initial(),
          (lecture) => LectureState.lectureLoaded(lectureEntity: lecture),
        );
      },
      getAllLectures: (e) async* {
        final either = await getAllLectures(NoParams());
        yield either.fold(
          (failure) => LectureState.initial(),
          (lectures) =>
              LectureState.allLecturesLoaded(lecturesEntities: lectures),
        );
      },
      getAllLecturesByCourse: (e) async* {
        final either = await getAllLecturesByUserId(e.courseTitle);
        yield either.fold(
          (failure) => LectureState.initial(),
          (lectures) =>
              LectureState.allLecturesLoaded(lecturesEntities: lectures),
        );
      },
      createCourse: (e) async* {
        createCourse(e.courseTitle);
      },
      getAllCoursesByUserId: (e) async* {
        final either = await getAllCoursesByUserId(e.userId);
        yield either.fold(
          (failure) => LectureState.failure(),
          (courseIds) => LectureState.allCoursesLoaded(courseIds: courseIds),
        );
      },
    );
  }
}
