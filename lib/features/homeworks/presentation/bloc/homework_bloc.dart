import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_entity.dart';
import 'package:online_learning/features/homeworks/domain/usecases/get_all_homeworks_by_course.dart';
import 'package:online_learning/features/homeworks/domain/usecases/get_homework.dart';
import 'package:online_learning/features/homeworks/domain/usecases/submit_homework.dart';
import 'package:online_learning/features/homeworks/domain/usecases/upload_homework.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/data/models/user_model.dart';

part 'homework_event.dart';
part 'homework_state.dart';
part 'homework_bloc.freezed.dart';

class HomeworkBloc extends Bloc<HomeworkEvent, HomeworkState> {
  HomeworkBloc({
    @required this.uploadHomework,
    @required this.getAllHomeworksByCourse,
    @required this.submitHomework,
    @required this.getHomework,
  }) : super(HomeworkState.initial());

  final UploadHomework uploadHomework;
  final GetAllHomeworksByCourse getAllHomeworksByCourse;
  final SubmitHomework submitHomework;
  final GetHomework getHomework;

  @override
  Stream<HomeworkState> mapEventToState(
    HomeworkEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield HomeworkState.initial();
      },
      selectFile: (e) async* {
        final result = await FilePicker.platform.pickFiles();
        yield state.copyWith(
          filePath: result.files.single.path,
        );
      },
      uploadHomework: (e) async* {
        yield state.copyWith(isSubmitting: true);
        final either = await uploadHomework(
          HomeworkParams(
            user: e.user,
            courseTitle: e.courseTitle,
            title: e.title,
            description: e.description,
            fileUrl: e.filePath,
            dueDate: e.dueDate,
          ),
        );
        yield either.fold(
          (failure) => state.copyWith(homeworkFailureOrSuccessOption: none()),
          (unit) => state.copyWith(isSubmitting: false),
        );
      },
      getHomework: (e) async* {
        final either = await getHomework(SubmitParams(
          homeworkTitle: e.homeworkTitle,
          fileUrl: state.filePath,
          courseTitle: e.courseTitle,
          userId: state.userId,
        ));
        yield either.fold(
          (failure) => state.copyWith(homeworkFailureOrSuccessOption: none()),
          (homeworkSubmit) => state.copyWith(
            filePath: homeworkSubmit.fileUrl,
            note: homeworkSubmit.note,
          ),
        );
      },
      getAllHomeworksByCourse: (e) async* {
        yield state.copyWith(isSubmitting: true);
        final either = await getAllHomeworksByCourse(
          e.courseTitle,
        );

        yield either.fold(
          (failure) => state.copyWith(homeworkFailureOrSuccessOption: none()),
          (homeworks) => state.copyWith(
            homeworks: homeworks,
            courseTitle: e.courseTitle,
            isSubmitting: false,
          ),
        );
      },
      submitHomework: (e) async* {
        final either = await submitHomework(
          SubmitParams(
            userId: e.userId,
            fileUrl: e.fileUrl,
            note: e.note,
            homeworkTitle: e.homeworkTitle,
            submitDate: e.submitDate,
            courseTitle: e.courseTitle,
          ),
        );
        either.fold(
          (failure) => state.copyWith(homeworkFailureOrSuccessOption: none()),
          (unit) => state.copyWith(
            isSubmitting: false,
          ),
        );
        // to referesh the UI
        add(HomeworkEvent.getAllHomeworksByCourse(
          courseTitle: state.courseTitle,
        ));
      },
    );
  }
}
