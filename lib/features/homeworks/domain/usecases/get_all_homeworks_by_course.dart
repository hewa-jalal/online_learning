import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_entity.dart';
import 'package:online_learning/features/homeworks/domain/repository/homework_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

@lazySingleton
class GetAllHomeworksByCourse extends UseCase<List<HomeworkEntity>, String> {
  final HomeworkRepository homeworkRepository;

  GetAllHomeworksByCourse({@required this.homeworkRepository});
  @override
  Future<Either<Failure, List<HomeworkEntity>>> call(String courseTitle) {
    return homeworkRepository.getAllHomeworksByCourse(courseTitle: courseTitle);
  }
}
