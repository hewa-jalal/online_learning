import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_lecture_progress.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';

part 'progress_event.dart';
part 'progress_state.dart';
part 'progress_bloc.freezed.dart';

class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  final LectureBloc lectureBloc;
  final Ticker ticker;
  final LectureTask lectureTask;
  StreamSubscription _subscription;

  ProgressBloc({
    @required this.ticker,
    @required this.lectureBloc,
    @required this.lectureTask,
  }) : super(_Initial());

  @override
  Stream<ProgressState> mapEventToState(
    ProgressEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        // print('bloc progress started');
        // double progress =
        //     task.snapshot.bytesTransferred / task.snapshot.totalBytes;
        // print('progress $progress');
        // await _subscription?.cancel();
        // _subscription =
        //     ticker.tick().listen((tick) => add(ProgressEvent.updated(tick)));
        await _subscription?.cancel();
        _subscription = lectureTask
            .progress()
            .listen((percentage) => add(ProgressEvent.updated(percentage)));

        if (event is _Updated) {
          print('event is updated');
          yield _Loading(percentage: event.tickCount);
        }
      },
      updated: (e) async* {
        yield ProgressState.loading(percentage: e.tickCount);
      },
      pause: (e) async* {},
      resume: (e) async* {},
    );
  }
}
