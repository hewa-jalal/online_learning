import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../repository/lectures_repository.dart';
import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';

import 'download_lecture.dart';

@lazySingleton
class UploadLecture extends UseCase<Unit, LectureParams> {
  final LecturesRepository lecturesRepository;

  UploadLecture(this.lecturesRepository);
  @override
  Future<Either<Failure, Unit>> call(LectureParams params) {
    return lecturesRepository.uploadLecture(
      fileUrl: params.fileUrl,
      user: params.user,
      title: params.lectureTitle,
      description: params.description,
      courseTitle: params.courseTitle,
    );
  }
}
