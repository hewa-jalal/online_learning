import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_lecture_progress.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

part 'progress_event.dart';
part 'progress_state.dart';
part 'progress_bloc.freezed.dart';

class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  final LectureBloc lectureBloc;
  final GetLectureProgress lectureProgress;
  final Ticker ticker;

  StreamSubscription lectureSubscription;
  ProgressBloc({
    @required this.ticker,
    @required this.lectureProgress,
    @required this.lectureBloc,
  }) : super(_Initial()) {
    lectureSubscription = lectureBloc.listen(
      (lectureState) {
        lectureState.maybeMap(
          initial: (e) => this.add(ProgressEvent.started()),
          loading: (e) => this.add(ProgressEvent.started()),
          orElse: () {
            this.add(ProgressEvent.started());
          },
        );
      },
    );
  }

  StreamSubscription _subscription;

  @override
  Stream<ProgressState> mapEventToState(
    ProgressEvent event,
  ) async* {
    final task = await lectureProgress(NoParams());

    event.map(
      started: (e) async* {
        double progress =
            task.snapshot.bytesTransferred / task.snapshot.totalBytes;
        await _subscription?.cancel();
        _subscription = ticker.tick().listen((tick) => add(_Updated(tick)));

        print('progress $progress');
        if (event is _Updated) {
          yield _Loading(percentage: event.tickCount);
        }
      },
      updated: (e) async* {},
      resume: (e) async* {},
      pause: (e) async* {},
    );
  }
}
