import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

@lazySingleton
class CreateCourse extends UseCase<Unit, String> {
  final LecturesRepository lecturesRepository;

  CreateCourse(this.lecturesRepository);
  @override
  Future<Either<Failure, Unit>> call(String courseTitle) {
    return lecturesRepository.createCourse(courseTitle: courseTitle);
  }
}
