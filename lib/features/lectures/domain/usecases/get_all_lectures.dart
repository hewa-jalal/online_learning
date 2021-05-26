import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';
import '../entities/lecture_entity.dart';
import '../repository/lectures_repository.dart';

@lazySingleton
class GetAllLectures extends UseCase<List<LectureEntity>, NoParams> {
  final LecturesRepository? lecturesRepository;

  GetAllLectures({required this.lecturesRepository});
  @override
  Future<Either<Failure, List<LectureEntity>>> call(NoParams noParams) {
    return lecturesRepository!.getAllLectures();
  }
}
