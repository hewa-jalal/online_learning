import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_entity.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_submit_entity.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/data/models/user_model.dart';

abstract class HomeworkRepository {
  Future<Either<Failure, Unit>> uploadHomework({
    @required UserModel user,
    @required String title,
    @required String courseTitle,
    @required int dueDate,
    String description,
    String fileUrl,
  });

  Future<Either<Failure, List<HomeworkEntity>>> getAllHomeworksByCourse({
    @required String courseTitle,
  });

  Future<Either<Failure, HomeworkSubmitEntity>> getHomework({
    @required String courseTitle,
  });

  Future<Either<Failure, Unit>> submitHomework({
    @required String userId,
    @required String fileUrl,
    @required String note,
    @required String homeworkTitle,
    @required String courseTitle,
    @required int submitDate,
  });
}
