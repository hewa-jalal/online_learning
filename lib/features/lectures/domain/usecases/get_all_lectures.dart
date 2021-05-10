import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../entities/lecture_entity.dart';
import '../repository/lectures_repository.dart';
import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';

@lazySingleton
class GetAllLectures extends UseCase<List<LectureEntity>, NoParams> {
  final LecturesRepository lecturesRepository;

  GetAllLectures({@required this.lecturesRepository});
  @override
  Future<Either<Failure, List<LectureEntity>>> call(NoParams noParams) {
    return lecturesRepository.getAllLectures();
  }
}
