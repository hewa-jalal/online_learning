import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';
import '../repository/lectures_repository.dart';

@lazySingleton
class CreateCourse extends UseCase<Unit, String> {
  final LecturesRepository? lecturesRepository;

  CreateCourse(this.lecturesRepository);
  @override
  Future<Either<Failure, Unit>> call(String courseTitle) {
    return lecturesRepository!.createCourse(courseTitle: courseTitle);
  }
}
