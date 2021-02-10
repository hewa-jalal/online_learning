import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

class GetLectureProgress {
  final LecturesRepository lecturesRepository;

  GetLectureProgress(this.lecturesRepository);

  Future<firebase_storage.Task> call(NoParams noParams) {
    return lecturesRepository.getLectureProgress();
  }
}

/// Class which exposes a `tick` method to emit values periodically.
class Ticker {
  /// Emits a new `int` up to 10 every second.
  Stream<int> tick() {
    return Stream.periodic(const Duration(seconds: 1), (x) => x).take(10);
  }
}
