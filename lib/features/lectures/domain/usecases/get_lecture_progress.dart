import 'package:dartz/dartz.dart' hide Task;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

/// Class which exposes a `tick` method to emit values periodically.
class Ticker {
  /// Emits a new `int` up to 10 every second.
  Stream<int> tick() {
    return Stream.periodic(const Duration(seconds: 1), (x) => x).take(10);
  }
}

class LectureTask {
  Task task;

  Stream<double> progress() {
    return Stream.value(
      task.snapshot.bytesTransferred / task.snapshot.totalBytes,
    );
  }
}
