import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';
import '../repository/lectures_repository.dart';

@lazySingleton
class CreateCourse extends UseCase<Unit, CourseParams> {
  final LecturesRepository? lecturesRepository;

  CreateCourse(this.lecturesRepository);
  @override
  Future<Either<Failure, Unit>> call(CourseParams courseParams) {
    return lecturesRepository!.createCourse(
      courseTitle: courseParams.courseTitle,
      userDept: courseParams.userDept,
    );
  }
}

class CourseParams extends Equatable {
  final String courseTitle;
  final String userDept;

  CourseParams({
    required this.courseTitle,
    required this.userDept,
  });

  @override
  List<Object?> get props => [courseTitle, userDept];
}
