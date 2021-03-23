import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/core/lecture_task.dart';

part 'progress_event.dart';
part 'progress_state.dart';
part 'progress_bloc.freezed.dart';

@injectable
class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  final LectureTask lectureTask;
  StreamSubscription _subscription;

  ProgressBloc({
    @required this.lectureTask,
  }) : super(_Initial());

  @override
  Stream<ProgressState> mapEventToState(
    ProgressEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        await _subscription?.cancel();
        _subscription = lectureTask
            .progress()
            .listen((task) => add(ProgressEvent.updated(task)));

        // if (event is _Updated) {
        //   print('event is updated');
        //   yield _Loading(percentage: event.tickCount);
        // }
      },
      updated: (e) async* {
        yield ProgressState.loading(
          percentage: (e.task.bytesTransferred.toDouble() /
              e.task.totalBytes.toDouble()),
        );
      },
      pause: (e) async* {
        lectureTask.pause();
      },
      resume: (e) async* {
        lectureTask.resume();
      },
      cancel: (e) async* {
        lectureTask.cancel();
      },
    );
  }
}
