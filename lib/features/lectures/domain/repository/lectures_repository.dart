import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import '../entities/lecture_entity.dart';
import '../../../user/core/errors/failures.dart';
import '../../../user/data/models/user_model.dart';

abstract class LecturesRepository {
  Future<Either<Failure, Unit>> downloadLecture({
    @required String fileUrl,
    @required String courseTitle,
    @required String lectureTitle,
  });
  Future<Either<Failure, Unit>> uploadLecture({
    @required String fileUrl,
    @required UserModel user,
    @required String courseTitle,
    String title,
    String description,
  });
  Future<Either<Failure, List<LectureEntity>>> getAllLectures();
  Future<Either<Failure, List<LectureEntity>>> getAllLecturesByCourse({
    @required String courseTitle,
  });
  Future<Either<Failure, List<String>>> getAllCoursesByUserId({
    @required String userId,
  });
  Future<Either<Failure, Unit>> createCourse({
    @required String courseTitle,
  });
  Future<Either<Failure, Unit>> submitUser({
    @required String userId,
    @required String courseTitle,
    @required String lectureTitle,
  });
}
