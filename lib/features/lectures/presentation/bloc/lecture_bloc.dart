import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:online_learning/features/lectures/domain/usecases/download_lecture.dart';
import 'package:online_learning/features/lectures/domain/usecases/upload_lecture.dart';

part 'lecture_event.dart';
part 'lecture_state.dart';
part 'lecture_bloc.freezed.dart';

class LectureBloc extends Bloc<LectureEvent, LectureState> {
  final DownloadLecture downloadLecture;
  final UploadLecture uploadLecture;
  LectureBloc({
    @required this.downloadLecture,
    @required this.uploadLecture,
  }) : super(_Initial());

  @override
  Stream<LectureState> mapEventToState(
    LectureEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      uploadLecture: (e) async* {
        final result = await FilePicker.platform.pickFiles();
        if (result != null) {
          yield LectureState.loading();
          final either = await uploadLecture(
              LectureParams(fileUrl: result.files.single.path));
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
          (l) => LectureState.initial(),
          (lecture) => LectureState.lectureLoaded(lectureEntity: lecture),
        );
      },
    );
  }
}
