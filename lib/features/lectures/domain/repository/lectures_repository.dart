import 'package:dartz/dartz.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

abstract class LecturesRepository {
  Future<Either<Failure, LectureEntity>> downloadLecture(String fileUrl);
  Future<Either<Failure, LectureEntity>> uploadLecture(String fileUrl);
  Future<firebase_storage.Task> getLectureProgress();
}
