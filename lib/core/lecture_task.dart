import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

/// Class which exposes a `tick` method to emit values periodically.
class Ticker {
  /// Emits a new `int` up to 10 every second.
  Stream<int> tick() {
    return Stream.periodic(const Duration(seconds: 1), (x) => x).take(10);
  }
}

@lazySingleton
class CustomUploadTask {
  Task task;

  Stream<TaskSnapshot> progress() => task.snapshotEvents;

  void pause() => task.pause();

  void resume() => task.resume();

  void cancel() => task.cancel();
}
