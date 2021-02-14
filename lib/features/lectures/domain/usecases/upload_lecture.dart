import 'package:dartz/dartz.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

import 'download_lecture.dart';

class UploadLecture extends UseCase<LectureEntity, LectureParams> {
  final LecturesRepository lecturesRepository;

  UploadLecture(this.lecturesRepository);
  @override
  Future<Either<Failure, LectureEntity>> call(LectureParams params) {
    return lecturesRepository.uploadLecture(
      fileUrl: params.fileUrl,
      title: params.title,
      description: params.description,
    );
  }
}
