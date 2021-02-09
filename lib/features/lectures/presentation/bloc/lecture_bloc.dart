import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_lecture.dart';
import 'package:online_learning/features/lectures/domain/usecases/post_lecture.dart';

part 'lecture_event.dart';
part 'lecture_state.dart';
part 'lecture_bloc.freezed.dart';

class LectureBloc extends Bloc<LectureEvent, LectureState> {
  final PostLecture postLecture;
  LectureBloc(this.postLecture) : super(_Initial());

  @override
  Stream<LectureState> mapEventToState(
    LectureEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      postLecture: (e) async* {
        final result = await FilePicker.platform.pickFiles();
        if (result != null) {
          print('result ${result.files.single.path}');
          final either = await postLecture(
              LectureParams(fileUrl: result.files.single.path));
          yield either.fold(
            (l) => LectureState.initial(),
            (lecture) {
              return LectureState.lectureLoaded(lectureEntity: lecture);
            },
          );
        } else {
          print('result is null');
        }
      },
    );
  }
}
