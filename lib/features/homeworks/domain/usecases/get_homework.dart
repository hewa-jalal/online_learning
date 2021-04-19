import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_submit_entity.dart';
import 'package:online_learning/features/homeworks/domain/repository/homework_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

@lazySingleton
class GetHomework extends UseCase<HomeworkSubmitEntity, String> {
  final HomeworkRepository homeworkRepository;

  GetHomework({@required this.homeworkRepository});
  @override
  Future<Either<Failure, HomeworkSubmitEntity>> call(String courseTitle) {
    return homeworkRepository.getHomework(courseTitle: courseTitle);
  }
}
