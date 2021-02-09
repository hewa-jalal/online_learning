import 'package:dartz/dartz.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';

abstract class LecturesRepository {
  Future<Either<Failure, LectureEntity>> getLecture(String fileUrl);
  Future<Either<Failure, LectureEntity>> postLecture(String fileUrl);
}
