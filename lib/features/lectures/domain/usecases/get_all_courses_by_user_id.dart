import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../repository/lectures_repository.dart';
import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';

@lazySingleton
class GetAllCoursesByUserId extends UseCase<List<String>, String> {
  final LecturesRepository? lecturesRepository;

  GetAllCoursesByUserId({required this.lecturesRepository});
  @override
  Future<Either<Failure, List<String>>> call(String userId) {
    return lecturesRepository!.getAllCoursesByUserId(userId: userId);
  }
}
