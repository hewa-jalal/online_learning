import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';
import '../repository/lectures_repository.dart';

@lazySingleton
class GetAllCoursesByUserDept extends UseCase<List<String>, String> {
  final LecturesRepository? lecturesRepository;

  GetAllCoursesByUserDept({required this.lecturesRepository});
  @override
  Future<Either<Failure, List<String>>> call(String userDept) {
    return lecturesRepository!.getAllCoursesByUserDept(userDept: userDept);
  }
}
