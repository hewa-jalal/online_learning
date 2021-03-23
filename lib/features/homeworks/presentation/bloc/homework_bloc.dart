import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_entity.dart';
import 'package:online_learning/features/homeworks/domain/usecases/upload_homework.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/data/models/user_model.dart';

part 'homework_event.dart';
part 'homework_state.dart';
part 'homework_bloc.freezed.dart';

class HomeworkBloc extends Bloc<HomeworkEvent, HomeworkState> {
  HomeworkBloc({
    @required this.uploadHomework,
  }) : super(HomeworkState.initial());
  final UploadHomework uploadHomework;

  @override
  Stream<HomeworkState> mapEventToState(
    HomeworkEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield HomeworkState.initial();
      },
      uploadHomework: (e) async* {
        print('event title => ${e.title}');
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
          (unit) => state.copyWith(isSubmitting: true),
        );
      },
      selectFile: (e) async* {
        final result = await FilePicker.platform.pickFiles();
        yield state.copyWith(
          filePath: result.files.single.path,
        );
      },
    );
  }
}
