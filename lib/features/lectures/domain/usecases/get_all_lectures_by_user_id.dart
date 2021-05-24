import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../entities/lecture_entity.dart';
import '../repository/lectures_repository.dart';
import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';

@lazySingleton
class GetAllLecturesByCourse extends UseCase<List<LectureEntity>, String> {
  final LecturesRepository? lecturesRepository;

  GetAllLecturesByCourse({required this.lecturesRepository});
  @override
  Future<Either<Failure, List<LectureEntity>>> call(String courseTitle) {
    return lecturesRepository!.getAllLecturesByCourse(courseTitle: courseTitle);
  }
}
