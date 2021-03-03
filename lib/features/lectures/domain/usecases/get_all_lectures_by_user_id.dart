import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

@lazySingleton
class GetAllLecturesByUserId extends UseCase<List<LectureEntity>, String> {
  final LecturesRepository lecturesRepository;

  GetAllLecturesByUserId({@required this.lecturesRepository});
  @override
  Future<Either<Failure, List<LectureEntity>>> call(String courseTitle) {
    return lecturesRepository.getAllLecturesByCourse(courseTitle: courseTitle);
  }
}
