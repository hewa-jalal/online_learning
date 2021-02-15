import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/data/models/user_mode.dart';

abstract class LecturesRepository {
  Future<Either<Failure, LectureEntity>> downloadLecture(String fileUrl);
  Future<Either<Failure, LectureEntity>> uploadLecture({
    @required String fileUrl,
    @required UserModel user,
    String title,
    String description,
  });
}
